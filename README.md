<div align="center">
  <img width="180px" src="docs/venture_logo.png" />
  <h1>Venture Finance</h1>
  <h3>Designing a Reliable Data Foundation for Financial Decision-Making</h3>
  <p><strong>End-to-End Data Warehouse and Analytics Case Study</strong></p>
</div>

---

<h2>1. Context and Business Problem</h2>

<p>
Venture Finance is a growing financial technology platform that manages over 
<strong>1 million transactions</strong> across <strong>94,000+ customers</strong>, 
representing a total portfolio value of <strong>$3.15 billion</strong>.
</p>

<p>
As the company scaled, its data systems did not evolve at the same pace. 
This created a set of issues that directly impacted reporting accuracy and decision-making.
</p>

<p>
The core problems were:
</p>

<ul>
<li><strong>Inconsistent merchant data</strong> — the same company appeared under multiple names (for example: "Amazon", "AMZN", "Amazon.com")</li>
<li><strong>Duplicate customer records</strong> — the same customer existed multiple times with conflicting details</li>
<li><strong>Missing financial values</strong> — approximately 25% of transactions had no recorded amount</li>
<li><strong>Extreme outliers</strong> — some transactions showed unusually large values that distorted analysis</li>
</ul>

<p>
These issues made it difficult to answer basic business questions such as:
</p>

<ul>
<li>What is the true revenue?</li>
<li>Who are the most valuable customers?</li>
<li>Which merchants drive the business?</li>
</ul>

<p>
The objective of this project was to rebuild the data system so that the business could rely on its numbers with confidence.
</p>

---

<h2>2. Objective</h2>

<p>
The goal was to design a structured data system that:
</p>

<ul>
<li>Produces accurate and consistent financial reporting</li>
<li>Creates a single, reliable view of each customer</li>
<li>Standardizes merchant and category information</li>
<li>Supports business dashboards and decision-making</li>
</ul>

<p>
To achieve this, a three-layer data architecture was implemented along with a full data cleaning and transformation pipeline.
</p>

---

<h2>3. Data Overview</h2>

<ul>
<li><strong>Total Records:</strong> 1,000,000+ transactions</li>
<li><strong>Customers:</strong> 94,000+</li>
<li><strong>Data Size:</strong> 1.1 GB</li>
<li><strong>Source Format:</strong> SQLite database</li>
</ul>

<p>
The dataset intentionally included real-world data issues such as missing values, duplicates, and inconsistent text fields to simulate production conditions.
</p>

---

<h2>4. Approach and System Design</h2>

<p>
The solution was built using a layered approach, where data improves in quality as it moves through each stage.
</p>

<h3>4.1 Raw Data Layer</h3>

<p>
The first layer stores data exactly as it is received. No changes are made at this stage.
</p>

<ul>
<li>All records are stored in their original format</li>
<li>Errors and inconsistencies are preserved for traceability</li>
<li>This layer acts as a source of truth for auditing</li>
</ul>

---

<h3>4.2 Cleaned Data Layer</h3>

<p>
In this stage, the data is corrected and standardized.
</p>

<p>
Key improvements include:
</p>

<ul>
<li><strong>Handling missing values:</strong> Missing transaction amounts were filled using the median value of similar transactions within the same category</li>
<li><strong>Standardizing merchant names:</strong> Different variations of the same merchant were converted into a single consistent name</li>
<li><strong>Fixing categories:</strong> Text inconsistencies such as "GROCERY" and "groceries" were unified</li>
<li><strong>Removing duplicates:</strong> Multiple records belonging to the same customer were merged into a single record</li>
<li><strong>Managing extreme values:</strong> Unusually large transactions were adjusted to reduce their impact on overall trends</li>
</ul>

---

<h3>4.3 Reporting Layer</h3>

<p>
The final layer is structured for analysis and reporting.
</p>

<ul>
<li>Data is organized into fact and dimension tables</li>
<li>Relationships between customers, transactions, and merchants are clearly defined</li>
<li>Pre-built views are created to support dashboards</li>
</ul>

<p>
This structure allows business users to access clean, reliable data without needing to understand the underlying complexity.
</p>

---

<h2>5. Key Problems and How They Were Solved</h2>

<h3>5.1 Missing Transaction Values</h3>

<p>
Nearly one quarter of all transactions had no recorded value.
</p>

<p>
Instead of removing these records, which would result in loss of important information, 
missing values were estimated based on similar transactions.
</p>

<p>
Each missing value was replaced using the median transaction amount within the same category.
</p>

<p>
This approach ensured that:
</p>

<ul>
<li>The dataset remained complete</li>
<li>Estimates were realistic and not influenced by extreme values</li>
</ul>

<p>
<strong>Impact:</strong> Prevented a significant under-reporting of revenue estimated at approximately $780 million.
</p>

---

<h3>5.2 Duplicate Customers</h3>

<p>
Multiple entries were found for the same customer, often with conflicting information such as different signup dates.
</p>

<p>
A set of rules was created to identify and merge these records into a single version.
</p>

<p>
The final result was a "single customer view", where each individual appears only once.
</p>

<p>
<strong>Impact:</strong>
</p>

<ul>
<li>Improved accuracy in customer analysis</li>
<li>Reduced repeated marketing communication</li>
<li>Enabled better targeting and segmentation</li>
</ul>

---

<h3>5.3 Merchant Name Inconsistency</h3>

<p>
The same merchant appeared under multiple names, making it difficult to measure performance.
</p>

<p>
All variations were standardized into a single name using text cleaning and mapping rules.
</p>

<p>
For example:
</p>

<ul>
<li>AMZN → Amazon</li>
<li>Amazon.com → Amazon</li>
</ul>

<p>
<strong>Impact:</strong>
</p>

<ul>
<li>Accurate measurement of merchant contribution</li>
<li>Clear understanding of revenue concentration</li>
</ul>

---

<h3>5.4 Extreme Values</h3>

<p>
Some transactions were significantly larger than typical values, which distorted averages and trends.
</p>

<p>
These values were adjusted using a statistical method that limits the influence of extreme numbers.
</p>

<p>
<strong>Impact:</strong>
</p>

<ul>
<li>More stable trend analysis</li>
<li>More reliable reporting of average values</li>
</ul>

---

<h2>6. Key Insights</h2>

<ul>
<li>A small number of merchants drive a large portion of total transactions</li>
<li>Subscription-based services generate frequent and predictable activity</li>
<li>Data quality issues can significantly distort financial reporting if left unresolved</li>
</ul>

---

<h2>7. Technical Implementation</h2>

<p>
The system was built using a combination of tools:
</p>

<ul>
<li><strong>Python:</strong> Data cleaning and transformation</li>
<li><strong>Pandas:</strong> Handling large datasets and applying data corrections</li>
<li><strong>SQLite:</strong> Initial raw data storage</li>
<li><strong>SQL Server:</strong> Final structured data warehouse</li>
<li><strong>Power BI:</strong> Dashboard creation and reporting</li>
</ul>

<p>
During data migration, large datasets caused performance issues. 
This was resolved by processing the data in smaller batches, ensuring stable execution and complete data transfer.
</p>

---

<h2>8. Limitations</h2>

<ul>
<li>The dataset is simulated and does not include real-world seasonal trends</li>
<li>The pipeline processes data in batches and does not yet support real-time updates</li>
<li>Some missing fields, such as email addresses, were filled using placeholder values</li>
</ul>

---

<h2>9. Conclusion</h2>

<p>
This project demonstrates how structured data design and careful data cleaning can transform unreliable raw data into a dependable system for decision-making.
</p>

<p>
By addressing missing values, inconsistencies, and duplication, the final system provides a clear and accurate view of the business.
</p>

<p>
The result is a foundation that supports reporting, analysis, and future growth.
</p>

---

<div align="center">
  <h3>Author</h3>
  <p><strong>Saswata Ghosh</strong><br>Data Analyst and Data Engineering Projects</p>
</div>
