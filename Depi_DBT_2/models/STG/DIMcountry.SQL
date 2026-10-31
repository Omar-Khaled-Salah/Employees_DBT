WITH ods_country AS (
    SELECT DISTINCT country
    FROM {{ ref('ODS') }}
)
SELECT
    ROW_NUMBER() OVER (ORDER BY country) AS id,
    country
FROM ods_country