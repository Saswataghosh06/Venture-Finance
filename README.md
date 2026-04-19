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
As the system scaled, data quality issues began affecting reporting accuracy. 
Missing values, duplicate customers, and inconsistent merchant naming made it difficult 
to trust key business metrics.
</p>

<p>
This project rebuilds the data system into a structured pipeline that produces reliable 
and decision-ready information.
</p>

---

<h2>Key Outcomes</h2>

<ul>
<li><strong>$780M reporting risk eliminated</strong> by resolving 24.9% missing transaction values</li>
<li><strong>5,000+ duplicate customer records unified</strong></li>
<li><strong>15+ merchant name variations standardized</strong></li>
<li><strong>Stable and reliable revenue tracking enabled</strong></li>
</ul>

---

<h2>System Architecture</h2>

<p>
A layered data pipeline was implemented to progressively improve data quality.
</p>

<div align="center">
  <img width="700" src="YOUR_ISSUE_LINK_MEDALLION_DIAGRAM" />
</div>

<p align="center">
Medallion architecture showing Raw → Cleaned → Reporting layers
</p>

---

<h2>Business Problem</h2>

<ul>
<li>Same merchant stored under multiple names</li>
<li>Duplicate customer records with conflicting attributes</li>
<li>Nearly 25% missing transaction values</li>
<li>Extreme values distorting analysis</li>
</ul>

---

<h2>Data Cleaning Impact</h2>

<h3>Merchant Standardization</h3>

<p>
Merchant data was fragmented across multiple naming formats. 
After cleaning, these were unified into consistent entities.
</p>

<div align="center">
  <img width="700" src="YOUR_ISSUE_LINK_MERCHANT_LEADERBOARD" />
</div>

<p align="center">
Top merchants after standardization showing true revenue contribution
</p>

---

<h3>Customer Deduplication</h3>

<p>
Duplicate customer records were merged into a single consistent view, 
improving accuracy in customer-level analysis and reducing redundant communication.
</p>

---

<h3>Handling Missing Values</h3>

<p>
24.9% of transactions had missing values. These were filled using category-level estimates 
to preserve dataset completeness while maintaining realistic values.
</p>

<!-- Optional Section -->
<!--
<div align="center">
  <img width="700" src="YOUR_ISSUE_LINK_BEFORE_AFTER_PROFILING" />
</div>

<p align="center">
Data quality improvement before and after cleaning
</p>
-->

---

<h2>Business Insights</h2>

<h3>Revenue Behavior Over Time</h3>

<div align="center">
  <img width="700" src="YOUR_ISSUE_LINK_FINTECH_PULSE" />
</div>

<p align="center">
Revenue trend showing transaction activity and stability over time
</p>

<ul>
<li>Revenue follows consistent patterns after cleaning</li>
<li>Outlier control improves trend reliability</li>
<li>Recurring transactions create predictable flow</li>
</ul>

---

<h3>Customer Segmentation</h3>

<div align="center">
  <img width="500" src="YOUR_ISSUE_LINK_CREDIT_TIER" />
</div>

<p align="center">
Customer distribution across credit tiers
</p>

<ul>
<li>Different customer tiers show varied contribution patterns</li>
<li>Segmentation enables targeted business strategies</li>
</ul>

---

<h2>Technical Execution</h2>

<ul>
<li>Python and Pandas used for data cleaning and transformation</li>
<li>SQLite used for raw data storage</li>
<li>SQL Server used for structured data modeling</li>
<li>Power BI used for dashboard and visualization</li>
</ul>

<p>
Large data volume required batch processing during migration to ensure stable execution.
</p>

---

<h2>Limitations</h2>

<ul>
<li>Dataset is simulated and does not include real-world seasonal patterns</li>
<li>Pipeline runs in batch mode and does not support real-time updates</li>
<li>Some missing fields were filled using placeholder values</li>
</ul>

---

<div align="center">
  <h3>Author</h3>
  <p><strong>Saswata Ghosh</strong></p>
</div>
