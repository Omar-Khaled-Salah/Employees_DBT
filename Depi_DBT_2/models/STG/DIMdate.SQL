WITH calendar AS (
    SELECT DISTINCT CAST(DOB AS DATE) AS full_date
    FROM {{ ref('ODS') }}
    WHERE DOB IS NOT NULL
)
SELECT
    CAST(CONVERT(CHAR(8), full_date, 112) AS INT) AS id,   -- YYYYMMDD
    full_date,
    DATENAME(WEEKDAY, full_date)                  AS day_name,
    MONTH(full_date)                              AS month_number,
    DATENAME(MONTH, full_date)                    AS month_name,
    YEAR(full_date)                               AS year_number
FROM calendar