-- Customer overview
SELECT
    COUNT(*) AS total_customers,
    COUNT(*) FILTER (
        WHERE churn = 'Yes'
    ) AS churned_customers,
    COUNT(*) FILTER (
        WHERE churn = 'No'
    ) AS retained_customers,
    ROUND(
        COUNT(*) FILTER (
            WHERE churn = 'Yes'
        ) * 100.0 / COUNT(*),
        2
    ) AS churn_rate,
    ROUND(
        AVG(tenure),
        2
    ) AS avg_tenure,
    ROUND(
        AVG(monthly_charges),
        2
    ) AS avg_monthly_charges,
    ROUND(
        AVG(total_charges),
        2
    ) AS avg_total_charges
FROM telco.customers;


-- Customer retention rate
SELECT
    COUNT(*) AS total_customers,
    COUNT(*) FILTER (
        WHERE churn = 'No'
    ) AS retained_customers,
    ROUND(
        COUNT(*) FILTER (
            WHERE churn = 'No'
        ) * 100.0 / COUNT(*),
        2
    ) AS retention_rate
FROM telco.customers;


-- Churn by gender
SELECT
    gender,
    COUNT(*) AS total_customers,
    COUNT(*) FILTER (
        WHERE churn = 'Yes'
    ) AS churned_customers,
    ROUND(
        COUNT(*) FILTER (
            WHERE churn = 'Yes'
        ) * 100.0 / COUNT(*),
        2
    ) AS churn_rate
FROM telco.customers
GROUP BY gender
ORDER BY churn_rate DESC;


-- Churn by senior citizen
SELECT
    CASE
        WHEN senior_citizen = 1 THEN 'Senior Citizen'
        ELSE 'Non-Senior Citizen'
    END AS customer_segment,
    COUNT(*) AS total_customers,
    COUNT(*) FILTER (
        WHERE churn = 'Yes'
    ) AS churned_customers,
    ROUND(
        COUNT(*) FILTER (
            WHERE churn = 'Yes'
        ) * 100.0 / COUNT(*),
        2
    ) AS churn_rate
FROM telco.customers
GROUP BY senior_citizen
ORDER BY churn_rate DESC;


-- Churn by partner and dependents
SELECT
    partner,
    dependents,
    COUNT(*) AS total_customers,
    COUNT(*) FILTER (
        WHERE churn = 'Yes'
    ) AS churned_customers,
    ROUND(
        COUNT(*) FILTER (
            WHERE churn = 'Yes'
        ) * 100.0 / COUNT(*),
        2
    ) AS churn_rate
FROM telco.customers
GROUP BY
    partner,
    dependents
ORDER BY churn_rate DESC;


-- Churn by contract
SELECT
    contract,
    COUNT(*) AS total_customers,
    COUNT(*) FILTER (
        WHERE churn = 'Yes'
    ) AS churned_customers,
    COUNT(*) FILTER (
        WHERE churn = 'No'
    ) AS retained_customers,
    ROUND(
        COUNT(*) FILTER (
            WHERE churn = 'Yes'
        ) * 100.0 / COUNT(*),
        2
    ) AS churn_rate
FROM telco.customers
GROUP BY contract
ORDER BY churn_rate DESC;


-- Monthly charges by contract
SELECT
    contract,
    COUNT(*) AS total_customers,
    ROUND(
        AVG(monthly_charges),
        2
    ) AS avg_monthly_charges,
    ROUND(
        AVG(tenure),
        2
    ) AS avg_tenure,
    ROUND(
        AVG(total_charges),
        2
    ) AS avg_total_charges
FROM telco.customers
GROUP BY contract
ORDER BY avg_monthly_charges DESC;


-- Contract contribution to total churn
SELECT
    contract,
    COUNT(*) FILTER (
        WHERE churn = 'Yes'
    ) AS churned_customers,
    ROUND(
        COUNT(*) FILTER (
            WHERE churn = 'Yes'
        ) * 100.0 /
        SUM(
            COUNT(*) FILTER (
                WHERE churn = 'Yes'
            )
        ) OVER (),
        2
    ) AS churn_contribution_pct
FROM telco.customers
GROUP BY contract
ORDER BY churned_customers DESC;


-- Churn by internet service
SELECT
    internet_service,
    COUNT(*) AS total_customers,
    COUNT(*) FILTER (
        WHERE churn = 'Yes'
    ) AS churned_customers,
    ROUND(
        COUNT(*) FILTER (
            WHERE churn = 'Yes'
        ) * 100.0 / COUNT(*),
        2
    ) AS churn_rate
FROM telco.customers
GROUP BY internet_service
ORDER BY churn_rate DESC;


-- Churn by tech support
SELECT
    tech_support,
    COUNT(*) AS total_customers,
    COUNT(*) FILTER (
        WHERE churn = 'Yes'
    ) AS churned_customers,
    ROUND(
        COUNT(*) FILTER (
            WHERE churn = 'Yes'
        ) * 100.0 / COUNT(*),
        2
    ) AS churn_rate
FROM telco.customers
GROUP BY tech_support
ORDER BY churn_rate DESC;


-- Churn by online security
SELECT
    online_security,
    COUNT(*) AS total_customers,
    COUNT(*) FILTER (
        WHERE churn = 'Yes'
    ) AS churned_customers,
    ROUND(
        COUNT(*) FILTER (
            WHERE churn = 'Yes'
        ) * 100.0 / COUNT(*),
        2
    ) AS churn_rate
FROM telco.customers
GROUP BY online_security
ORDER BY churn_rate DESC;


-- Churn by streaming services
SELECT
    streaming_tv,
    streaming_movies,
    COUNT(*) AS total_customers,
    COUNT(*) FILTER (
        WHERE churn = 'Yes'
    ) AS churned_customers,
    ROUND(
        COUNT(*) FILTER (
            WHERE churn = 'Yes'
        ) * 100.0 / COUNT(*),
        2
    ) AS churn_rate
FROM telco.customers
GROUP BY
    streaming_tv,
    streaming_movies
ORDER BY churn_rate DESC;


-- Churn by payment method
SELECT
    payment_method,
    COUNT(*) AS total_customers,
    COUNT(*) FILTER (
        WHERE churn = 'Yes'
    ) AS churned_customers,
    ROUND(
        COUNT(*) FILTER (
            WHERE churn = 'Yes'
        ) * 100.0 / COUNT(*),
        2
    ) AS churn_rate
FROM telco.customers
GROUP BY payment_method
ORDER BY churn_rate DESC;


-- Churn by paperless billing
SELECT
    paperless_billing,
    COUNT(*) AS total_customers,
    COUNT(*) FILTER (
        WHERE churn = 'Yes'
    ) AS churned_customers,
    ROUND(
        COUNT(*) FILTER (
            WHERE churn = 'Yes'
        ) * 100.0 / COUNT(*),
        2
    ) AS churn_rate
FROM telco.customers
GROUP BY paperless_billing
ORDER BY churn_rate DESC;


-- Churn by tenure group
WITH tenure_segment AS (
    SELECT
        customer_id,
        churn,
        CASE
            WHEN tenure <= 12 THEN '0-12 Months'
            WHEN tenure <= 24 THEN '13-24 Months'
            WHEN tenure <= 48 THEN '25-48 Months'
            WHEN tenure <= 60 THEN '49-60 Months'
            ELSE '61-72 Months'
        END AS tenure_group
    FROM telco.customers
)
SELECT
    tenure_group,
    COUNT(*) AS total_customers,
    COUNT(*) FILTER (
        WHERE churn = 'Yes'
    ) AS churned_customers,
    ROUND(
        COUNT(*) FILTER (
            WHERE churn = 'Yes'
        ) * 100.0 / COUNT(*),
        2
    ) AS churn_rate
FROM tenure_segment
GROUP BY tenure_group
ORDER BY
    CASE tenure_group
        WHEN '0-12 Months' THEN 1
        WHEN '13-24 Months' THEN 2
        WHEN '25-48 Months' THEN 3
        WHEN '49-60 Months' THEN 4
        ELSE 5
    END;


-- Average tenure by churn status
SELECT
    churn,
    COUNT(*) AS total_customers,
    ROUND(
        AVG(tenure),
        2
    ) AS avg_tenure,
    ROUND(
        AVG(monthly_charges),
        2
    ) AS avg_monthly_charges
FROM telco.customers
GROUP BY churn
ORDER BY churn;


-- Monthly charges by churn status
SELECT
    churn,
    COUNT(*) AS total_customers,
    ROUND(
        SUM(monthly_charges),
        2
    ) AS total_monthly_charges,
    ROUND(
        AVG(monthly_charges),
        2
    ) AS avg_monthly_charges
FROM telco.customers
GROUP BY churn
ORDER BY churn;


-- Estimated lost monthly recurring charges
SELECT
    COUNT(*) FILTER (
        WHERE churn = 'Yes'
    ) AS churned_customers,
    ROUND(
        SUM(monthly_charges) FILTER (
            WHERE churn = 'Yes'
        ),
        2
    ) AS estimated_lost_mrr,
    ROUND(
        SUM(monthly_charges) FILTER (
            WHERE churn = 'No'
        ),
        2
    ) AS retained_customer_mrr
FROM telco.customers;


-- Revenue by contract and churn
SELECT
    contract,
    COUNT(*) AS total_customers,
    ROUND(
        SUM(monthly_charges),
        2
    ) AS total_monthly_charges,
    ROUND(
        SUM(monthly_charges) FILTER (
            WHERE churn = 'Yes'
        ),
        2
    ) AS churned_monthly_charges,
    ROUND(
        AVG(monthly_charges),
        2
    ) AS avg_monthly_charges
FROM telco.customers
GROUP BY contract
ORDER BY churned_monthly_charges DESC;


-- Highest monthly charges among churned customers
SELECT
    customer_id,
    contract,
    internet_service,
    tenure,
    monthly_charges,
    total_charges
FROM telco.customers
WHERE churn = 'Yes'
ORDER BY monthly_charges DESC
LIMIT 10;