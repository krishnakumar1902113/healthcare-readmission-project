# healthcare-readmission-project
"Healthcare Readmission Analysis using SQL and Power BI"
# Healthcare Readmission Analysis Project

## 📊 Project Overview

This project analyzes hospital readmission data for diabetic patients to identify key factors contributing to readmission and provides actionable recommendations for healthcare providers. The primary goal is to assist healthcare administrators in reducing readmission rates and improving patient outcomes.

---

## 📁 Dataset

- **Dataset Name**: diabetic_cleaned.csv
- **Source**: Diabetes Readmission Dataset (Educational Sample)
- **Records**: 100,000+ patient encounters
- **Key Features**:
  - Patient demographics (age, gender, race)
  - Hospital admission and discharge information
  - Clinical diagnoses and procedures
  - Medications prescribed
  - Readmission status (`readmitted`)

---

## 🏗️ Database Schema

The dataset was loaded into MySQL with the following table structure:

- **Table Name**: `diabetic_readmission`
- **Columns**: 50+ fields (demographics, clinical, operational, medications)
- **Data Types**: BIGINT, INT, VARCHAR

Full schema provided in `diabetic_readmission_full_project.sql`

---

## 🛠️ Tools & Technologies

- **SQL (MySQL)**: Data loading, cleaning, and analytical queries
- **Power BI**: Dashboard development and visualization
- **Python**: (Optional for initial data preparation)
- **DB-Fiddle**: Used for SQL query testing (cloud-based)

---

## 🔎 Analytical Approach

### SQL Analysis Performed:

- Total Readmission Rate
- Length of Stay vs. Readmission
- Diagnosis Impact on Readmission
- Medication Impact on Readmission
- Operational Efficiency (Admission Type, Discharge, Admission Source)

### Power BI Dashboard Includes:

- **Page 1**: Executive Summary
- **Page 2**: Demographic Impact
- **Page 3**: Clinical Factors (Diagnoses, Medications)
- **Page 4**: Operational Efficiency

---

## 📈 Key Findings

- Patients aged **70-80** showed higher readmission rates.
- Emergency admissions and certain discharge dispositions are highly correlated with readmissions.
- Certain diagnosis codes (`250.02`, `250.13`) appear most frequently in readmitted patients.
- Patients experiencing **medication changes** (`change = 'Ch'`) during hospitalization had a higher probability of readmission.
- Increased length of stay also correlates with increased readmission risk.

---

## 💡 Actionable Recommendations

1. **Implement targeted follow-up programs for elderly patients**, particularly those in the 70-80 age group.
2. **Strengthen medication reconciliation processes** for patients whose medications are changed during their hospital stay.
3. **Introduce enhanced discharge planning protocols** for high-risk admission and discharge types to reduce unnecessary readmissions.
4. **Monitor patients with specific chronic diagnoses (e.g., diabetes codes 250.02, 250.13)** for closer post-discharge care.

---

## 🔗 Repository Structure

