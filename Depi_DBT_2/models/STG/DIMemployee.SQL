SELECT
    ROW_NUMBER() OVER (ORDER BY ID) AS id,
    ID                              AS employee_id,
    first_name,
    last_name,
    email
FROM {{ ref('ODS') }}