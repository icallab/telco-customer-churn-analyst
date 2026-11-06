-- Total Rows
SELECT
    COUNT(*) AS total_customers
FROM telco.customers;


-- Duplicate customer ID
SELECT
    customer_id,
    COUNT(*) AS total_records
FROM telco.customers
GROUP BY customer_id
HAVING COUNT(*) > 1;


-- Missing values
SELECT
    COUNT(*) FILTER (
        WHERE customer_id IS NULL
    ) AS missing_customer_id,
    COUNT(*) FILTER (
        WHERE tenure IS NULL
    ) AS missing_tenure,
    COUNT(*) FILTER (
        WHERE monthly_charges IS NULL
    ) AS missing_monthly_charges,
    COUNT(*) FILTER (
        WHERE total_charges IS NULL
    ) AS missing_total_charges,
    COUNT(*) FILTER (
        WHERE churn IS NULL
    ) AS missing_churn
FROM telco.customers;


-- Validasi kategori churn
SELECT
    churn,
    COUNT(*) AS total_customers
FROM telco.customers
GROUP BY churn
ORDER BY total_customers DESC;


-- Validasi nilai numerik
SELECT
    MIN(tenure) AS min_tenure,
    MAX(tenure) AS max_tenure,
    MIN(monthly_charges) AS min_monthly_charges,
    MAX(monthly_charges) AS max_monthly_charges,
    MIN(total_charges) AS min_total_charges,
    MAX(total_charges) AS max_total_charges
FROM telco.customers;