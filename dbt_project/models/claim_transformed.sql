SELECT
   date_trunc('month',claim_date) as month,
   claim_type,
   count(*) as claim_count,
   sum(amount) as total_amount,
   sum(CASE WHEN is_fraud then 1 else 0 end) as fraud_count
FROM {{ ref('stg_claim') }}
GROUP BY 1,2
ORDER BY 1
