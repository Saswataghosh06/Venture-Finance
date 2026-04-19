USE FinTech_DWH;
GO

-- 1. Create a temporary 'Noise' factor for every row
-- This uses the row's own ID to ensure every single row gets a unique change
UPDATE gold_fact_transactions
SET amount = amount + (CAST(ABS(CHECKSUM(NEWID())) % 500 AS FLOAT) - 250) / 10.0
WHERE amount > 2400 AND amount < 2500; -- Targets that specific "clump"

-- 2. Final check to make sure nothing is exactly identical
UPDATE gold_fact_transactions
SET amount = amount + (CAST(tx_id AS FLOAT) / 1000000.0)
WHERE amount IN (
    SELECT amount 
    FROM gold_fact_transactions 
    GROUP BY amount 
    HAVING COUNT(*) > 10
);
GO  

--Verify

SELECT TOP 10 amount, COUNT(*) as frequency
FROM gold_fact_transactions
GROUP BY amount
ORDER BY frequency DESC;