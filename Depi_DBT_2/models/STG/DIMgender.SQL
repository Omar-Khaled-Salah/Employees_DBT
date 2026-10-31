WITH ods_gender as(
    SELECT DISTINCT gender FROM {{ref('ODS')}}
)
SELECT ROW_NUMBER() OVER( ORDER BY gender ) AS id, gender FROM ods_gender