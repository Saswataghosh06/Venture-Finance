USE FinTech_DWH;
GO

CREATE OR ALTER VIEW gold_view_customer_spending_summary AS
SELECT 
    c.cust_id,
    c.full_name,
    c.credit_tier,
    COUNT(t.tx_id) AS total_transactions,
    SUM(t.amount) AS total_amount_spent,
    AVG(t.amount) AS avg_transaction_value,
    MAX(t.tx_date) AS last_transaction_date
FROM gold_dim_customers c
LEFT JOIN gold_fact_transactions t ON c.cust_id = t.cust_id
GROUP BY c.cust_id, c.full_name, c.credit_tier;


--The "Spot Check" (Verify the Logic)
SELECT TOP 10 * FROM gold_view_customer_spending_summary
ORDER BY total_amount_spent DESC;

--The "Integrity Check" (Verify the Join)
SELECT 
    (SELECT COUNT(*) FROM gold_dim_customers) AS Total_Customers,
    (SELECT COUNT(*) FROM gold_view_customer_spending_summary) AS Customers_in_View;


--The "Financial Audit" (Verify the Math)
    SELECT 
    SUM(amount) AS Fact_Table_Total,
    (SELECT SUM(total_amount_spent) FROM gold_view_customer_spending_summary) AS View_Total
FROM gold_fact_transactions;