USE FinTech_DWH;
GO

-- 1. Create Gold Dimension Table (Customers)
-- We add 'Credit_Tier' logic here to add business value
IF OBJECT_ID('gold_dim_customers', 'U') IS NOT NULL DROP TABLE gold_dim_customers;

SELECT 
    cust_id,
    full_name,
    email_address,
    credit_score,
    CASE 
        WHEN credit_score >= 800 THEN 'Excellent'
        WHEN credit_score >= 740 THEN 'Very Good'
        WHEN credit_score >= 670 THEN 'Good'
        ELSE 'Fair/Poor'
    END AS credit_tier,
    signup_date
INTO gold_dim_customers
FROM silver_customers;

-- 2. Create Gold Fact Table (Transactions)
IF OBJECT_ID('gold_fact_transactions', 'U') IS NOT NULL DROP TABLE gold_fact_transactions;

SELECT 
    tx_id,
    cust_id,
    amount,
    category,
    CAST(tx_date AS DATE) as tx_date,
    merchant_name
INTO gold_fact_transactions
FROM silver_transactions;

-- 3. Add Primary Keys for Performance
ALTER TABLE gold_dim_customers ALTER COLUMN cust_id INT NOT NULL;
ALTER TABLE gold_dim_customers ADD CONSTRAINT PK_customers PRIMARY KEY (cust_id);

ALTER TABLE gold_fact_transactions ALTER COLUMN tx_id INT NOT NULL;
ALTER TABLE gold_fact_transactions ADD CONSTRAINT PK_transactions PRIMARY KEY (tx_id);