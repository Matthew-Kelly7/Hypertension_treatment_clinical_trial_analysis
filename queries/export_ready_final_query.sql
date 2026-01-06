Final query in order to export to tableau or powerBI:

SELECT s.patient_id,
    s.site_id,
    s.age,
    s.gender,
    s.enrollment_date,
    s.treatment_group,
    s.dropout,

    v.systolic_bp,
    v.diastolic_bp,
    v.cholesterol_level,

    a.adverse_events
FROM subjects s
LEFT JOIN vitals v
ON s.subject_ID = v.subject_ID
LEFT JOIN adverse_events a
ON s.subject_ID = a.subject_id;
