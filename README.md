<div align="center">
 <img width="400" height="112" src="https://github.com/user-attachments/assets/857560f4-3812-431f-b1ae-53a7f2479ecd" />
  <h1>Venture Finance</h1>
  <h3>Designing a Reliable Data System for Financial Decision-Making</h3>
  <p><strong>1M+ Transactions | 94K+ Customers | $3.15B Portfolio | Medallion Data Architecture</strong></p>
</div>

---

## Executive Summary

This project addresses a critical failure in financial reporting caused by poor data quality in a high-volume transaction system.

The platform processes over 1 million transactions across 94 thousand customers. However, nearly 25 percent of transaction values were missing, merchant data was inconsistent, and customer records were duplicated. This created a high-risk reporting environment with over 780 million dollars of unreliable financial data.

A full Medallion data pipeline was designed to restore trust in the data. Cleaning, standardization, and statistical correction transformed the dataset into a reliable analytical system.

Key outcomes:

• 780 million dollars of reporting risk eliminated  
• 5,000 plus duplicate customers unified  
• Merchant fragmentation removed across 15 plus variations  
• Stable revenue trends established for decision making  

Post-cleaning analysis revealed strong merchant concentration, category-driven revenue behavior, and clear customer tier dynamics that directly impact financial strategy.

Dataset: Due to file size constraints, the full 1.1 million record dataset can be downloaded <a href="https://drive.google.com/drive/folders/1RjauOVAP0n1xhZKPxWgiuddRgHZOzJAx?usp=drive_link">HERE.</a>

---

## Project Background

Venture Finance is a rapidly scaling financial platform managing a 3.15 billion dollar portfolio.

As transaction volume increased, the data system failed to maintain consistency. The result was unreliable reporting across revenue, customers, and merchant performance.

Initial audit findings:

• 24.9 percent missing transaction values  
• 20 percent missing merchant names  
• 5,000 duplicate customer records  
• Extreme outliers up to 999,999  
• Category inconsistencies such as Grocery vs Groceries  

These issues made it impossible to generate accurate business insights.

---

## Dashboard Overview

<div align="center">
  <img width="900" src="https://github.com/user-attachments/assets/cb6390d8-37c2-4fd3-a3bd-a3e0dd540c38" />
</div>

<p align="center">
Executive dashboard presenting revenue trends, merchant contribution, and customer behavior
</p>

---

## Data Architecture — Medallion Pipeline

<div align="center">
  <img width="700" src="YOUR_ISSUE_LINK_MEDALLION" />
</div>

<p align="center">
Bronze (raw) → Silver (cleaned) → Gold (reporting)
</p>

### Bronze Layer
• Raw ingestion from source systems  
• No transformations applied  
• Full audit and traceability layer  

### Silver Layer
• Data cleaning and transformation  
• Merchant standardization  
• Missing value imputation  
• Outlier control  
• Category normalization  

### Gold Layer
• Star schema for analytics  
• Fact and dimension tables  
• Pre-aggregated SQL views for BI consumption  

---

## Data Cleaning and Transformation

### 1. Missing Transaction Values (Critical Fix)

Problem:

25 percent of transaction values were missing, creating a major gap in revenue reporting.

Solution:

• Applied category-level median imputation  
• Preserved category-specific spending behavior  
• Avoided distortion from extreme values  

Impact:

Restored continuity in revenue analysis without introducing statistical bias.

---

### 2. Merchant Standardization

Problem:

Merchant names appeared in multiple formats, fragmenting revenue.

Example: Amazon, AMZN, Amazon.com

Solution:

• SQL-based mapping using CASE and pattern matching  
• Unified all variations into consistent entities  

Impact:

Enabled accurate merchant-level revenue aggregation.

---

### 3. Customer Deduplication

Problem:

5,000 duplicate customer records with conflicting attributes.

Solution:

• Rule-based merging using cust_id  
• Prioritized latest and most complete records  

Impact:

Created a single, reliable customer view for segmentation and analysis.

---

### 4. Outlier Handling

Problem:

Extreme values up to 999,999 distorted averages and trends.

Solution:

• Winsorization applied with upper cap at realistic thresholds  
• Distribution-based validation  

Impact:

Stabilized financial trends and improved analytical accuracy.

---

### 5. Handling Missing Merchant Names

Problem:

20 percent merchant names were null.

Solution:

• Replaced with category-based placeholders  
• Example: Groceries Provider  

Impact:

Improved usability in filters and reporting without data gaps.

---

## Data Quality Improvement — Before vs After

### Overall Data Health

| Metric | Before Cleaning | After Cleaning | Improvement |
|-------|----------------|---------------|------------|
| Total Records | 1,000,000 | 1,000,000 | No data loss |
| Missing Transaction Values | 24.93% | 0% | Fully resolved |
| Missing Merchant Names | 20.01% | 0% | Fully resolved |
| Duplicate Customers | 5,000+ | 0 | Fully resolved |
| Category Inconsistencies | High | 0 | Standardized |
| Outliers Impact | Severe | Controlled | Stabilized |

---

### Financial Data Integrity

| Metric | Before | After | Impact |
|------|--------|------|--------|
| Revenue Reliability | Untrustworthy | Reliable | Decision-ready |
| Average Transaction Value | Distorted | 2.55K stable | Accurate benchmarking |
| Median Transaction Value | 2.44K | Preserved | No statistical drift |
| Outlier Influence | Extreme | Minimized | Clean trend lines |

---

### Customer Data Quality

| Metric | Before | After | Impact |
|------|--------|------|--------|
| Unique Customers | 94,728 inconsistent | 94K unified | Single customer view |
| Duplicate Records | 5,000+ | 0 | Clean segmentation |
| Customer Profiles | Fragmented | Consistent | Reliable analytics |

---

### Merchant Data Quality

| Metric | Before | After | Impact |
|------|--------|------|--------|
| Merchant Variations | 15+ inconsistent labels | Standardized | Accurate aggregation |
| Null Merchant Names | 20% missing | 0% | Complete reporting |
| Top Merchant Accuracy | Fragmented | Unified | True revenue contribution |

---

### Category Standardization

| Metric | Before | After | Impact |
|------|--------|------|--------|
| Category Labels | Mixed formats | Standardized | Clean grouping |
| Category Aggregation | Inconsistent | Accurate | Reliable insights |

---

### Key Takeaways

• Data completeness improved to near 100 percent usable  
• Revenue calculations became decision-grade  
• Entities fully unified across customers and merchants  
• Trends stabilized after outlier control  

---

## Business Insights Deep Dive

### Revenue Distribution and Stability

<div align="center">
  <img width="700" src="YOUR_ISSUE_LINK_FINTECH_PULSE" />
</div>

• Total revenue stabilized at 3.15 billion  
• Monthly revenue shows consistent flow  
• Outlier removal improved clarity  

---

### Merchant Contribution and Risk

<div align="center">
  <img width="700" src="YOUR_ISSUE_LINK_MERCHANT" />
</div>

• Amazon contributes ~60 percent of total revenue  
• Remaining merchants contribute significantly less  

Insight:

High dependency on a single merchant creates concentration risk.

---

### Category Performance

• Top categories: Groceries, Subscription, Shopping  
• Essential and recurring categories dominate  

Insight:

Revenue is driven by daily and recurring spend patterns.

---

### Customer Segmentation

<div align="center">
  <img width="500" src="YOUR_ISSUE_LINK_CREDIT_TIER" />
</div>

• Fair and Poor credit tier drives highest volume  
• Higher credit tiers contribute lower volume but higher value  

Insight:

Business is volume-driven with risk exposure to lower credit segments.

---

### Transaction Behavior

• Average transaction value: 2.55K  
• Revenue driven by volume, not high ticket size  

---

## Strategic Recommendations

### 1. Reduce Merchant Dependency

• Diversify beyond Amazon  
• Expand merchant partnerships  

---

### 2. Monetize High Credit Customers

• Launch premium offerings  
• Target high-value segments  

---

### 3. Manage Risk in Low Credit Segments

• Introduce credit-based controls  
• Optimize pricing strategies  

---

### 4. Strengthen Subscription Model

• Expand recurring services  
• Bundle with shopping categories  

---

## Technical Implementation

• Python and Pandas for transformation  
• SQLite for initial processing  
• SQL Server for warehouse  
• SQLAlchemy for migration  
• Power BI for dashboards  

### Performance Optimization

• Batch processing for large data  
• Clustered indexing on fact tables  
• SQL views as semantic layer  

---

## Validation and Data Quality Checks

• Row count validation across layers  
• Join integrity checks  
• Aggregation reconciliation  
• Random sampling verification  

---

## Limitations

• Synthetic dataset  
• Batch pipeline only  
• Imputation introduces assumptions  

---

<div align="center">
  <h2>Author</h2>
  <p><strong>Saswata Ghosh</strong><br>Data Analyst Portfolio Project</p>
</div>
