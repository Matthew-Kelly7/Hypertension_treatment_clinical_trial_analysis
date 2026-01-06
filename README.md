**Hypertension Clinical Trial – SQL Analysis & Tableau Dashboard**

**Overview:**
This project analyzes data from a hypertension clinical trial evaluating the effectiveness of a new drug on patient blood pressure outcomes.
The analysis is performed using SQL for data querying and aggregation, with insights presented through an interactive Tableau dashboard.

**The goal of this project is to demonstrate:**
Clinical-style data analysis
Strong SQL querying skills
Clear communication of results through visualization

**Objectives:**
Assess the impact of the trial drug on systolic and diastolic blood pressure
Compare treatment and control groups
Present clinically meaningful insights in a clear, visual format

**Tech Stack:**
SQL (SQlite DBeaver)
Tableau Public (visualization & dashboarding)
CSV data source (cleaned clinical trial dataset)

**Dataset Description:**
The dataset represents synthetic clinical trial data and includes fields such as:
subject_ID
age
gender
site_ID
enrollment_date
dropout
treatment_group (Drug A / Placebo / Drug B)
systolic_BP
diastolic_BP
cholesterol_level
adverse_events
This dataset is synthetic and used for educational and portfolio purposes only.


Repository Structure:
hypertension-clinical-trial-sql/
├─ README.md
├─ schema/
│  └─ create_tables.sql
├─ data/
│  └─ sample_data
├─ queries/
│  ├─ SQL_analysis_queries.sql
│  ├─ export_ready_final_query.sql
├─ Hypertension_Dashboard1.png
   
**Key SQL analysis**
This project demonstrates the following SQL skills:
Table design and schema creation
Aggregations (AVG, COUNT)
Group comparisons (treatment vs control)


**Tableau Dashboard**
The Tableau dashboard presents key findings from the SQL analysis, including:
KPI including total dropouts, average cholesterol and average blood pressure
Average cholesterol by gender and treatment group
Average blood pressure by gender and treatment group
Number of adverse effects significantly reduced in 2024 compared to the two previous years
Dropout count higher in Drug B, especially males in 2024

**Tableau Public Dashboard:**
https://public.tableau.com/app/profile/matthew.kelly1545/viz/Hypotension_dashboard/Dashboard1


**Why This Project**
This was my first SQL project and was built to showcase:
Strong SQL fundamentals
Ability to translate raw data into decision-ready insights
Integration of analytics and visualization tools

**Disclaimer**
This project does not represent real clinical trial results and should not be used for medical or regulatory decision-making.
