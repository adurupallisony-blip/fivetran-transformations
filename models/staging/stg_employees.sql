{{ config(
    materialized='table',
    alias='EMPLOYEE_SALARY_FILTERED'
) }}

SELECT
    EMPLOYEE_ID,
    FIRST_NAME,
    LAST_NAME,
    EMAIL,
    JOB_ID,
    SALARY

FROM {{ source('employee_source', 'UPLOAD_EMPLOYEE_SALARY') }}

WHERE
    SALARY IS NOT NULL
    AND SALARY > 50000