-- View sample records
SELECT *
FROM sagemaker_sample_db.customer_churn
LIMIT 10;

-- Count total customers
SELECT COUNT(*) AS total_customers
FROM sagemaker_sample_db.customer_churn;

-- Check churn distribution
SELECT
    Churn,
    COUNT(*) AS customer_count
FROM sagemaker_sample_db.customer_churn
GROUP BY Churn;