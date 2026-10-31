SELECT
    ROW_NUMBER() OVER (ORDER BY o.ID)  AS id,
    e.id                               AS FK_employee_id,
    g.id                               AS FK_gender_id,
    c.id                               AS FK_country_id,
    d.id                               AS FK_department_id,
    dt.id                              AS FK_date_dob_id,
    CAST(o.salary AS DECIMAL(10,2))    AS salary
FROM {{ ref('ODS') }} AS o
LEFT JOIN {{ ref('DIMemployee') }}   AS e  ON e.employee_id = o.ID
LEFT JOIN {{ ref('DIMgender') }}     AS g  ON g.gender      = o.gender
LEFT JOIN {{ ref('DIMcountry') }}    AS c  ON c.country     = o.country
LEFT JOIN {{ ref('DIMdepartment') }} AS d  ON d.department  = o.department
LEFT JOIN {{ ref('DIMdate') }}       AS dt ON dt.full_date  = o.DOB