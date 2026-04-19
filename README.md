<div align="center">
  <img width="180px" src="docs/venture_logo.png" />
  <h1>Venture Finance</h1>
  <h3>Designing a Reliable Data System for Financial Decision-Making</h3>
  <p><strong>1M+ Transactions | 94K+ Customers | $3.15B Portfolio | Medallion Data Architecture</strong></p>
</div>

---

<h2>Project Background</h2>

<p>
<strong>Venture Finance</strong> is a rapidly scaling financial platform processing over 
<strong>1 million transactions</strong> across <strong>94,000+ customers</strong>, 
representing a total managed portfolio of <strong>$3.15 billion</strong>.
</p>

<p>
As the platform scaled, the underlying data systems failed to keep pace. 
This resulted in a growing layer of data inconsistencies that directly impacted 
reporting accuracy and business decision-making.
</p>

<p>
The core issues observed:
</p>

<ul>
<li>Inconsistent merchant naming (Amazon, AMZN, Amazon.com treated as separate entities)</li>
<li>Duplicate customer records with conflicting attributes</li>
<li>24.9% missing transaction values ("Ghost Money")</li>
<li>Extreme outliers distorting financial trends</li>
</ul>

<p>
These issues created a situation where financial reporting could not be trusted.
</p>

---

<h2>Dashboard Overview</h2>

<div align="center">
  <img width="900" src="YOUR_ISSUE_LINK_DASHBOARD" />
</div>

<p align="center">
Executive dashboard presenting revenue trends, merchant contribution, and customer insights
</p>

---

<h2>Key Outcomes</h2>

<ul>
<li><strong>$780M reporting risk eliminated</strong> by resolving missing transaction values</li>
<li><strong>5,000+ duplicate customers unified</strong> into a single customer view</li>
<li><strong>15+ merchant variations standardized</strong> into consistent entities</li>
<li><strong>Stable and reliable revenue tracking enabled</strong></li>
</ul>

---

<h2>Data Architecture — Medallion Pipeline</h2>

<p>
To solve these issues, a structured three-layer data system was implemented.
</p>

<div align="center">
  <img width="700" src="YOUR_ISSUE_LINK_MEDALLION" />
</div>

<p align="center">
Bronze (raw) → Silver (cleaned) → Gold (reporting)
</p>

<h3>Bronze Layer</h3>
<ul>
<li>Raw data stored without transformation</li>
<li>Includes missing values, duplicates, and inconsistencies</li>
<li>Serves as audit and traceability layer</li>
</ul>

<h3>Silver Layer</h3>
<ul>
<li>Data cleaning and transformation applied</li>
<li>Merchant normalization</li>
<li>Missing value handling</li>
<li>Outlier control</li>
<li>Category standardization</li>
</ul>

<h3>Gold Layer</h3>
<ul>
<li>Structured for reporting</li>
<li>Fact and dimension tables</li>
<li>Optimized for Power BI dashboards</li>
</ul>

---

<h2>Data Cleaning and Transformation</h2>

<h3>1. Merchant Standardization</h3>

<p>
Merchant data appeared under multiple formats, preventing accurate aggregation.
</p>

<div align="center">
  <img width="700" src="YOUR_ISSUE_LINK_MERCHANT" />
</div>

<p align="center">
Merchant leaderboard after cleaning shows true revenue contribution
</p>

<p>
All variations were mapped into unified entities, allowing accurate measurement of merchant performance.
</p>

---

<h3>2. Handling Missing Transaction Values</h3>

<p>
24.9% of transactions had missing values, creating a major gap in financial reporting.
</p>

<p>
Instead of removing these records, values were estimated using median values 
within the same transaction category.
</p>

<p>
This ensured realistic estimates without introducing bias from extreme values.
</p>

<!-- Optional -->
<!--
<div align="center">
  <img width="700" src="YOUR_BEFORE_AFTER_LINK" />
</div>
-->

---

<h3>3. Customer Deduplication</h3>

<p>
Multiple records existed for the same customer with inconsistent attributes.
</p>

<p>
A rule-based approach was used to merge these into a single unified record.
</p>

<p>
This created a consistent and reliable customer view for analysis.
</p>

---

<h3>4. Outlier Handling</h3>

<p>
Extreme transaction values distorted averages and trends.
</p>

<p>
These values were adjusted using statistical thresholds to reduce their impact 
while preserving the dataset.
</p>

---

<h2>Business Insights</h2>

<h3>Revenue Trends</h3>

<div align="center">
  <img width="700" src="YOUR_ISSUE_LINK_FINTECH_PULSE" />
</div>

<p align="center">
Revenue trend showing transaction activity over time
</p>

<ul>
<li>Revenue patterns become stable after cleaning</li>
<li>Outlier control improves trend clarity</li>
<li>Recurring transactions drive predictable revenue flow</li>
</ul>

---

<h3>Merchant Contribution</h3>

<p>
After standardization, a small number of merchants drive a large portion of revenue.
</p>

<p>
This highlights concentration risk and dependency on key partners.
</p>

---

<h3>Customer Segmentation</h3>

<div align="center">
  <img width="500" src="YOUR_ISSUE_LINK_CREDIT_TIER" />
</div>

<p align="center">
Customer distribution across credit tiers
</p>

<ul>
<li>Customer base is segmented across different risk and value tiers</li>
<li>Each tier contributes differently to revenue</li>
</ul>

---

<h2>Technical Implementation</h2>

<ul>
<li>Python and Pandas used for data transformation</li>
<li>SQLite used as raw data source</li>
<li>SQL Server used for data warehouse</li>
<li>Power BI used for visualization and dashboards</li>
</ul>

<p>
During migration, large data volume caused performance issues.
</p>

<p>
This was resolved using batch processing, where data was transferred in chunks 
to ensure stable execution.
</p>

---

<h2>Limitations</h2>

<ul>
<li>Synthetic dataset without real-world seasonal behavior</li>
<li>Pipeline operates in batch mode only</li>
<li>Some missing fields filled with placeholder values</li>
</ul>

---

<div align="center">
  <h2>Author</h2>
  <p><strong>Saswata Ghosh</strong><br>Data Analyst Portfolio Project</p>
</div>
