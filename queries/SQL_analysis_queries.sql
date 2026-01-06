List all subjects:
SELECT * 
FROM subjects s


List all vitals alongside subject info:
SELECT s.subject_ID, v.systolic_BP, v.diastolic_BP, v.cholesterol_level, s.age, s.gender
FROM vitals v
LEFT JOIN subjects s
ON s.subject_ID = v.subject_ID;


Average systolic BP:
SELECT AVG(systolic_BP) AS avg_systolic_BP
FROM vitals;


Average diastolic BP:
SELECT AVG(diastolic_BP) AS avg_diastolic_BP
FROM vitals;


Average cholesterol level:
SELECT AVG(cholesterol_level) AS avg_cholesterol_level
FROM vitals:


Averages for cholesterol, diastolic and systolic BP by gender and treatment:
SELECT s.gender, s.treatment_group, AVG(systolic_BP) AS avg_systolic_BP, AVG(diastolic_BP) AS avg_diastolic_BP, AVG(cholesterol_level) AS avg_cholesterol_level
FROM vitals v
LEFT JOIN subjects s
ON s.subject_ID = v.subject_ID
GROUP BY s.gender, s.treatment_group;


Create a table for cholesterol, diastolic BP, systolic BP by gender and treatment:
Create table averages AS
SELECT s.gender, s.treatment_group, AVG(systolic_BP) AS avg_systolic_BP, AVG(diastolic_BP) AS avg_diastolic_BP, AVG(cholesterol_level) AS avg_cholesterol_level
FROM vitals v
LEFT JOIN subjects s
ON s.subject_ID = v.subject_ID
GROUP BY s.gender, s.treatment_group;


Count comparison for males and females that dropped out:
SELECT dropout, gender, count(*)
FROM subjects
WHERE dropout = "1"
Group BY gender;


Count dropouts by treatment group:
SELECT dropout, treatment_group, count(*)
FROM subjects
WHERE dropouts = "1"
GROUP BY treatment_group;


Find subjects that have high blood pressure:
SELECT s.subject_id,s.gender, v.systolic_BP, v. disstolic_bp, v.cholesterol_level
FROM vitals v
LEFT JOIN subjects s
ON s.subject_id = v.subject_id
WHERE v.systolic_BP >= 140 
AND v.diastolic_BP >= 90;


Find subjects that have high blood pressure and also cholesterol:
SELECT s.subject_id,s.gender, v.systolic_BP, v. disstolic_bp, v.cholesterol_level
FROM vitals v
LEFT JOIN subjects s
ON s.subject_id = v.subject_id
WHERE v.systolic_BP >= 140 
AND v.diastolic_BP >= 90
AND cholesterol_level >=200;

