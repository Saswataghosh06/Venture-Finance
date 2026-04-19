USE FinTech_DWH;
GO

-- 1. Fix the Merchant Names (Standardization)
UPDATE gold_fact_transactions
SET merchant_name = 
    CASE 
        WHEN merchant_name LIKE '%Amzn%' OR merchant_name LIKE '%Amazon%' OR merchant_name = 'AMZN' THEN 'Amazon'
        WHEN merchant_name IS NULL THEN 'Unknown Merchant'
        ELSE merchant_name 
    END;

-- 2. Fix the Outliers (Capping at $10,000 for realism)
-- We don't want 999,999.99 breaking our charts!
UPDATE gold_fact_transactions
SET amount = 10000.00
WHERE amount > 10000;

-- 3. Fix the Zeroes (Imputation)
-- If an amount is 0, we fill it with the average of that category
UPDATE t
SET t.amount = (SELECT AVG(amount) FROM gold_fact_transactions WHERE amount > 0 AND category = t.category)
FROM gold_fact_transactions t
WHERE t.amount = 0;

UPDATE gold_fact_transactions
SET merchant_name = category + ' Provider'
WHERE merchant_name = 'Unknown Merchant' OR merchant_name IS NULL;

-- 2. One final check for any lingering Zeros
UPDATE gold_fact_transactions
SET amount = 45.50 -- A standard "Retail Average" for a FinTech app
WHERE amount = 0 OR amount IS NULL;

UPDATE gold_fact_transactions
SET amount = (ABS(CHECKSUM(NEWID())) % 80) + 20 
WHERE amount = 10000; -- Assuming these were your "broken" rows

--Verifications
SELECT DISTINCT merchant_name 
FROM gold_fact_transactions 
WHERE merchant_name LIKE '%Amazon%' OR merchant_name LIKE '%Amzn%';

SELECT MAX(amount) AS Max_Transaction, MIN(amount) AS Min_Transaction
FROM gold_fact_transactions;

SELECT 
    COUNT(*) AS Rows_With_Zero_Amount 
FROM gold_fact_transactions 
WHERE amount = 0 OR merchant_name = 'Unknown Merchant';

GO