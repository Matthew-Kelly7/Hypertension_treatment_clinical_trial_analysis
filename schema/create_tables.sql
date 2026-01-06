Subjects:

CREATE TABLE subjects (
    sunject_ID INT PRIMARY KEY,
    site_ID INT NOT NULL CHECK (site_id BETWEEN 1 AND 50),
    age INT NOT NULL CHECK (age >= 18),
    gender VARCHAR(10) NOT NULL CHECK (gender IN ('Male', 'Female')),
    enrollment_date DATE NOT NULL,
    treatment_group VARCHAR(50) NOT NULL CHECK (
        treatment_group IN ('Placebo', 'Drug A', 'Drug B')
    ),
    dropout BOOLEAN NOT NULL
);

Vitals:

CREATE TABLE vitals (
    subject_ID INT PRIMARY KEY,
    systolic_BP INT NOT NULL CHECK (systolic_bp > 0),
    diastolic_BP INT NOT NULL CHECK (diastolic_bp > 0),
    cholesterol_level INT NOT NULL CHECK (cholesterol_level > 0),

    CONSTRAINT fk_vitals_subjects
        FOREIGN KEY (subject_ID)
        REFERENCES subjects(subject_ID)
        ON DELETE CASCADE
);


Adverse_events:

CREATE TABLE adverse_events (
    subject_ID INT PRIMARY KEY,
    adverse_events INT NOT NULL CHECK (adverse_events >= 0),

    CONSTRAINT fk_ae_subjects
        FOREIGN KEY (subject_ID)
        REFERENCES subjects(subject_ID)
        ON DELETE CASCADE
);
