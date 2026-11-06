-- Customer risk segmentation
WITH customer_segments AS (
    SELECT
        customer_id,
        tenure,
        contract,
        monthly_charges,
        churn,
        CASE
            WHEN tenure <= 12
                 AND contract = 'Month-to-month'
                THEN 'High Risk'
            WHEN tenure <= 24
                 OR contract = 'Month-to-month'
                THEN 'Medium Risk'
            ELSE 'Low Risk'
        END AS risk_segment
    FROM telco.customers
)
SELECT
    risk_segment,
    COUNT(*) AS total_customers,
    COUNT(*) FILTER (
        WHERE churn = 'Yes'
    ) AS churned_customers,
    ROUND(
        COUNT(*) FILTER (
            WHERE churn = 'Yes'
        ) * 100.0 / COUNT(*),
        2
    ) AS churn_rate,
    ROUND(
        SUM(monthly_charges),
        2
    ) AS total_monthly_charges
FROM customer_segments
GROUP BY risk_segment
ORDER BY
    CASE risk_segment
        WHEN 'High Risk' THEN 1
        WHEN 'Medium Risk' THEN 2
        ELSE 3
    END;