<div align="center">
  <img width="180px" src="docs/venture_logo.png" />
  <h1>Venture Finance</h1>
  <h3>Building a Reliable Data System for Financial Decision-Making</h3>
  <p><strong>1M+ Transactions | 94K+ Customers | $3.15B Portfolio | End-to-End Data Pipeline</strong></p>
</div>

---

<h2>Overview</h2>

<p>
Venture Finance is a fast-scaling financial platform managing over 
<strong>1 million transactions</strong> across <strong>94,000+ customers</strong>.
</p>

<p>
As the system grew, the underlying data became unreliable. 
Key financial fields were missing, customer records were duplicated, and merchant data was inconsistent.
</p>

<p>
This project rebuilds the entire data foundation into a structured system that produces 
accurate, consistent, and decision-ready information.
</p>

---

<h2>Key Outcomes</h2>

<ul>
<li><strong>~$780M reporting risk eliminated</strong> by resolving 24.9% missing transaction values</li>
<li><strong>5,000+ duplicate customer records unified</strong> into a single customer view</li>
<li><strong>15+ inconsistent merchant variations standardized</strong> into clean entities</li>
<li><strong>Reliable monthly revenue tracking enabled</strong> through controlled data modeling</li>
</ul>

---

<h2>Business Problem</h2>

<p>
The original dataset contained several structural issues that made it unsuitable for analysis:
</p>

<ul>
<li>Same merchant stored under multiple names</li>
<li>Same customer stored multiple times with conflicting details</li>
<li>Nearly 25% of transactions missing financial values</li>
<li>Extreme transaction values distorting trends</li>
</ul>

<p>
These issues created gaps between reported numbers and actual business performance.
</p>

---

<h2>Data Scope</h2>

<ul>
<li><strong>Transactions:</strong> 1,000,000+</li>
<li><strong>Customers:</strong> 94,000+</li>
<li><strong>Data Size:</strong> 1.1 GB</li>
<li><strong>Source:</strong> SQLite database</li>
</ul>

---

<h2>System Design</h2>

<p>
A three-layer data structure was implemented to improve data quality step by step.
</p>

<h3>Raw Layer</h3>

<ul>
<li>Stores data exactly as received</li>
<li>No transformations applied</li>
<li>Includes missing values, duplicates, and inconsistencies</li>
</ul>

<h3>Cleaned Layer</h3>

<ul>
<li>Standardizes merchant and category values</li>
<li>Fills missing transaction amounts using category-based estimates</li>
<li>Removes duplicate customer records</li>
<li>Controls extreme values to stabilize analysis</li>
</ul>

<h3>Reporting Layer</h3>

<ul>
<li>Structured for analysis and dashboards</li>
<li>Clear relationships between customers, transactions, and merchants</li>
<li>Pre-built views to support reporting tools</li>
</ul>

---

<h2>Key Transformations</h2>

<h3>Handling Missing Transaction Values</h3>

<p>
24.9% of transaction values were missing.
</p>

<p>
Instead of removing these records, missing values were filled using the median value 
of similar transactions within the same category.
</p>

<p>
This preserved the dataset while maintaining realistic financial estimates.
</p>

<p>
<strong>Result:</strong> Prevented large-scale under-reporting of revenue.
</p>

---

<h3>Resolving Duplicate Customers</h3>

<p>
Multiple records existed for the same customer with different attributes.
</p>

<p>
These were merged into a single record using defined rules, creating a consistent 
view of each customer.
</p>

<p>
<strong>Result:</strong> Improved accuracy in customer analysis and reduced redundant communication.
</p>

---

<h3>Standardizing Merchant Data</h3>

<p>
Merchant names appeared in multiple formats.
</p>

<p>
All variations were converted into a single standardized format using text cleaning 
and mapping rules.
</p>

<p>
<strong>Result:</strong> Enabled accurate measurement of merchant performance.
</p>

---

<h3>Managing Extreme Values</h3>

<p>
Some transactions had unusually high values that affected averages and trends.
</p>

<p>
These were adjusted to reduce their influence while still retaining the data.
</p>

<p>
<strong>Result:</strong> More stable and reliable reporting.
</p>

---

<h2>Technical Execution</h2>

<ul>
<li>Data processed using Python and Pandas</li>
<li>Raw data stored in SQLite</li>
<li>Final data structured in SQL Server</li>
<li>Dashboards built using Power BI</li>
</ul>

<p>
During migration, large data volume caused performance issues. 
This was resolved by processing the data in smaller batches, ensuring stable execution.
</p>

---

<h2>Dashboard</h2>

<div align="center">
  <img width="900" src="dashboards/screenshots/executive_summary.png" />
</div>

<p align="center">
Executive view showing key metrics, trends, and business insights
</p>

---

<h2>Key Insights</h2>

<ul>
<li>A small number of merchants drive a large share of transactions</li>
<li>Recurring payments create predictable revenue patterns</li>
<li>Data quality issues can significantly distort financial reporting</li>
</ul>

---

<h2>Limitations</h2>

<ul>
<li>Dataset is simulated and does not include real-world seasonality</li>
<li>Pipeline currently runs as batch processing, not real-time</li>
<li>Some missing fields were filled with placeholder values</li>
</ul>

---

<div align="center">
  <h3>Author</h3>
  <p><strong>Saswata Ghosh</strong><br>Data Analyst Portfolio Project</p>
</div>
