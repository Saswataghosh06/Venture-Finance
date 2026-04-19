<div align="center">
  <img width="160px" src="docs/venture_logo.png" />
  <h1>Venture Finance — Data Warehouse & Analytics Project</h1>
  <p><strong>1M+ Transactions | $3.15B Portfolio | End-to-End Medallion Architecture</strong></p>
</div>

---

<h2>📌 Business Context</h2>

<p>
Venture Finance is a high-growth FinTech platform managing <strong>94,000+ customers</strong> 
and over <strong>1 million transactions</strong>.
</p>

<p>
Rapid scale introduced <strong>data quality failures</strong>:
</p>

<ul>
<li>Inconsistent merchant naming (Amazon, AMZN, Amazon.com)</li>
<li>Duplicate customer identities</li>
<li>~25% missing transaction values ("Ghost Money")</li>
</ul>

<p>
This project rebuilds the data foundation into a <strong>Medallion Data Warehouse</strong>, 
transforming unreliable raw data into decision-ready business intelligence.
</p>

---

<h2>🚀 Key Business Impact</h2>

<ul>
<li><strong>$780M reporting risk eliminated</strong> by resolving 24.9% null transaction values using categorical imputation</li>
<li><strong>Single Customer View created</strong> by deduplicating 5,000+ conflicting records</li>
<li><strong>Merchant truth established</strong> across 15+ inconsistent naming variations</li>
<li><strong>Reliable MoM revenue tracking</strong> enabled through outlier-controlled modeling</li>
</ul>

---

<h2>📊 Dashboard Preview</h2>

<div align="center">
  <img width="900" src="dashboards/screenshots/executive_summary.png" />
</div>

<p align="center">
Executive dashboard with dynamic KPIs, clean UX, and business storytelling
</p>

---

<h2>🧠 Executive Insights</h2>

<ol>
<li>
<strong>Ghost Money Problem</strong><br>
24.9% of transactions had missing values.<br>
Fixed using median-based imputation at category level → restored financial accuracy.
</li>

<br>

<li>
<strong>Merchant Concentration</strong><br>
After normalization, <strong>Amazon drives ~60% of shopping category volume</strong>.<br>
Subscription merchants show highest frequency → predictable revenue stream.
</li>

<br>

<li>
<strong>Customer Data Failure</strong><br>
5,000+ duplicate records identified.<br>
Resolved into <strong>Golden Records</strong> → reduced redundant marketing and improved targeting efficiency.
</li>
</ol>

---

<h2>🏗️ Data Architecture</h2>

<table>
<tr>
<th>Layer</th>
<th>Description</th>
</tr>

<tr>
<td><strong>Bronze</strong></td>
<td>Raw SQLite ingestion (1M rows). Includes missing values, outliers, and dirty strings.</td>
</tr>

<tr>
<td><strong>Silver</strong></td>
<td>Python (Pandas) cleaning layer. Standardization, null handling, and outlier treatment.</td>
</tr>

<tr>
<td><strong>Gold</strong></td>
<td>SQL Server warehouse. Star schema with reporting views for BI consumption.</td>
</tr>

</table>

---

<h2>⚙️ Technical Highlights</h2>

<ul>
<li><strong>Batch Processing Pipeline</strong> — Migrated 1M rows using chunked inserts (100K batches) to avoid memory failures</li>
<li><strong>Data Standardization Engine</strong> — Regex + mapping logic reduced fragmented categories into clean business segments</li>
<li><strong>Outlier Handling</strong> — Applied statistical capping to stabilize revenue reporting</li>
<li><strong>Reusable SQL Views</strong> — Built <code>report_customers</code> and <code>report_merchants</code> for BI layer</li>
</ul>

---

<h2>🛠️ Tech Stack</h2>

<table>
<tr>
<th>Tool</th>
<th>Usage</th>
</tr>

<tr><td>Python (Pandas)</td><td>Data cleaning, transformation</td></tr>
<tr><td>SQLite</td><td>Raw data source</td></tr>
<tr><td>SQL Server</td><td>Data warehouse (Gold layer)</td></tr>
<tr><td>Power BI</td><td>Dashboard and KPI modeling</td></tr>
<tr><td>Jupyter</td><td>Data exploration and pipeline development</td></tr>

</table>

---

<h2>⚠️ Limitations</h2>

<ul>
<li>Synthetic dataset (no real-world seasonality patterns)</li>
<li>One-time batch pipeline (no incremental loading / CDC)</li>
<li>Missing email data handled via placeholder logic</li>
</ul>

---

<div align="center">
  <h3>👤 Author</h3>
  <p><strong>Saswata Ghosh</strong><br>Data Analyst | Data Engineering Projects</p>
</div>
