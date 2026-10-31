WITH ods_department AS (
    SELECT DISTINCT department
    FROM {{ ref('ODS') }}
)
SELECT
    ROW_NUMBER() OVER (ORDER BY department) AS id,
    department
FROM ods_department