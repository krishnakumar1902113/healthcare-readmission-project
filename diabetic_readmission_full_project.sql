
CREATE TABLE diabetic_readmission (
  encounter_id BIGINT,
  patient_nbr BIGINT,
  race VARCHAR(50),
  gender VARCHAR(50),
  age VARCHAR(50),
  admission_type_id INT,
  discharge_disposition_id INT,
  admission_source_id INT,
  time_in_hospital INT,
  num_lab_procedures INT,
  num_procedures INT,
  num_medications INT,
  number_outpatient INT,
  number_emergency INT,
  number_inpatient INT,
  diag_1 VARCHAR(50),
  diag_2 VARCHAR(50),
  diag_3 VARCHAR(50),
  number_diagnoses INT,
  max_glu_serum VARCHAR(50),
  A1Cresult VARCHAR(50),
  metformin VARCHAR(50),
  repaglinide VARCHAR(50),
  nateglinide VARCHAR(50),
  chlorpropamide VARCHAR(50),
  glimepiride VARCHAR(50),
  acetohexamide VARCHAR(50),
  glipizide VARCHAR(50),
  glyburide VARCHAR(50),
  tolbutamide VARCHAR(50),
  pioglitazone VARCHAR(50),
  rosiglitazone VARCHAR(50),
  acarbose VARCHAR(50),
  miglitol VARCHAR(50),
  troglitazone VARCHAR(50),
  tolazamide VARCHAR(50),
  examide VARCHAR(50),
  citoglipton VARCHAR(50),
  insulin VARCHAR(50),
  `glyburide-metformin` VARCHAR(50),
  `glipizide-metformin` VARCHAR(50),
  `glimepiride-pioglitazone` VARCHAR(50),
  `metformin-rosiglitazone` VARCHAR(50),
  `metformin-pioglitazone` VARCHAR(50),
  `change` VARCHAR(50),
  diabetesMed VARCHAR(50),
  readmitted VARCHAR(50)
);


INSERT INTO diabetic_readmission VALUES
(1, 1001, 'Caucasian', 'Female', '[70-80]', 1, 1, 1, 5, 45, 1, 10, 0, 0, 0, '250.02', '401.9', '428.0', 9, 'None', 'None', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'Ch', 'Yes', '<30'),
(2, 1002, 'AfricanAmerican', 'Male', '[60-70]', 2, 3, 1, 7, 60, 2, 20, 1, 0, 1, '250.13', '401.1', '276.8', 8, 'None', 'None', 'Yes', 'No', 'No', 'No', 'Yes', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'Ch', 'Yes', 'NO');


-- Readmission Rate
SELECT 
    COUNT(*) AS total_patients,
    SUM(CASE WHEN readmitted <> 'NO' THEN 1 ELSE 0 END) AS readmitted_patients,
    ROUND(SUM(CASE WHEN readmitted <> 'NO' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS readmission_rate_percentage
FROM diabetic_readmission;

-- Length of Stay vs Readmission
SELECT 
    time_in_hospital,
    COUNT(*) AS total_cases,
    SUM(CASE WHEN readmitted <> 'NO' THEN 1 ELSE 0 END) AS readmitted_cases
FROM diabetic_readmission
GROUP BY time_in_hospital
ORDER BY time_in_hospital;

-- Diagnosis Impact
SELECT 
    diag_1,
    COUNT(*) AS total_cases,
    SUM(CASE WHEN readmitted <> 'NO' THEN 1 ELSE 0 END) AS readmitted_cases
FROM diabetic_readmission
GROUP BY diag_1
ORDER BY readmitted_cases DESC
LIMIT 10;

-- Medications Impact
SELECT 
    diabetesMed,
    `change`,
    COUNT(*) AS total_cases,
    SUM(CASE WHEN readmitted <> 'NO' THEN 1 ELSE 0 END) AS readmitted_cases
FROM diabetic_readmission
GROUP BY diabetesMed, `change`
ORDER BY readmitted_cases DESC;

-- Operational Efficiency
SELECT 
    admission_type_id,
    discharge_disposition_id,
    admission_source_id,
    COUNT(*) AS total_cases,
    SUM(CASE WHEN readmitted <> 'NO' THEN 1 ELSE 0 END) AS readmitted_cases
FROM diabetic_readmission
GROUP BY admission_type_id, discharge_disposition_id, admission_source_id
ORDER BY readmitted_cases DESC;
