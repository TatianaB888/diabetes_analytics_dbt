SELECT
    CASE
        WHEN glucose > 140 THEN 'High Risk'
        ELSE 'Normal'
    END AS risk_level,
    COUNT(*) AS patient_count
FROM {{ ref('patients_clean') }}
GROUP BY 1