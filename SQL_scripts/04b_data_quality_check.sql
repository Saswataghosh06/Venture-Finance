use FinTech_DWH
go

-- Check if the Silver table (The source) is broken
SELECT TOP 20 amount, merchant_name 
FROM silver_transactions;

-- Check if the Gold table (The one you made) is broken
SELECT TOP 20 amount, merchant_name 
FROM gold_fact_transactions;

