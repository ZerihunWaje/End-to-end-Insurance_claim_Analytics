WITH cust as(
SELECT 
   customer_id,
   name as customer_name,
   state,
   policy_type
FROM {{ source('snowflake','CUSTOMERS')}}
)
SELECT * FROM cust
