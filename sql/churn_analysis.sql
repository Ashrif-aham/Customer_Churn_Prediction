-- Calculate churn rate
SELECT
    COUNT(*) AS total_customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END)
        AS churned_customers,
    ROUND(
        100.0 * SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END)
        / NULLIF(COUNT(*), 0),
        2
    ) AS churn_rate_percent
FROM sagemaker_sample_db.customer_churn;

-- Analyze churn by contract
SELECT
    Contract,
    Churn,
    COUNT(*) AS customer_count
FROM sagemaker_sample_db.customer_churn
GROUP BY Contract, Churn
ORDER BY Contract, Churn;