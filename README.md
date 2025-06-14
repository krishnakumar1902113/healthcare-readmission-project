# healthcare-readmission-project
"Healthcare Readmission Analysis using SQL and Power BI"
# 📊 Healthcare Readmission Analysis (Diabetes Dataset)

> **Comprehensive End-to-End Data Analytics Project using SQL and Power BI**

---

## 📌 Project Objective

The primary objective of this project is to analyze patient readmissions for diabetic patients using real-world hospital data. The analysis focuses on:

- Identifying key demographic, clinical, and operational drivers of readmission
- Providing actionable recommendations to minimize readmission risks
- Demonstrating practical SQL querying, database design, and dashboard development with Power BI

---

## 🗄️ Dataset Overview

- **Dataset Name**: diabetic_cleaned.csv
- **Records**: ~100,000 patient encounters
- **Features**:  
    - Patient demographics: Age, Race, Gender
    - Admission information: Admission type, discharge disposition, source
    - Clinical data: Diagnoses, Procedures, Number of medications, Lab procedures
    - Medications: Medication prescriptions and changes
    - Readmission outcome: `readmitted` column

---

## 🏷️ Database Schema (MySQL)

- **Table Name**: `diabetic_readmission`
- **Total Columns**: 50+
- **Key Data Types**: BIGINT, INT, VARCHAR

> Full schema, table creation script, and sample data are included in [`diabetic_readmission_full_project.sql`](./diabetic_readmission_full_project.sql)

---

## ⚙️ Tools & Technologies

| Tool | Purpose |
| ---- | ------- |
| **MySQL** | Data Storage, Table Creation, SQL Querying |
| **Power BI Desktop** | Interactive Dashboard Development |
| **Python (Optional)** | Initial Data Cleaning & Preparation |
| **DB-Fiddle (MySQL 8.0)** | Online SQL Testing Platform |

---

## 🔎 Analytical Approach

**SQL Analysis Performed:**
- ✅ Overall Readmission Rate Calculation
- ✅ Length of Stay (LOS) vs. Readmission
- ✅ Diagnosis Codes Impact Analysis
- ✅ Medications Impact & Medication Changes
- ✅ Admission, Discharge & Operational Efficiency Analysis

**Power BI Dashboard Includes:**
- 📊 Executive Summary KPIs
- 📊 Demographic Impact (Age, Gender, Race)
- 📊 Clinical Factors (Diagnoses, Medications, Procedures)
- 📊 Operational Efficiency (Admission, Discharge, Admission Source)
- 🎛️ Full slicers and filters for dynamic exploration

---

## 📈 Key Insights

- Patients aged **70-80** show significantly higher readmission risk.
- Emergency admissions contribute heavily to readmission rates.
- Certain discharge dispositions (discharged to other facilities) show operational inefficiencies.
- Medication changes (`change = 'Ch'`) during hospitalization are associated with elevated readmission probabilities.
- Chronic diagnoses such as `250.02` and `250.13` (diabetes-related codes) dominate readmission cases.
- Length of hospital stay correlates directly with likelihood of readmission.

---

## 💡 Recommendations

1. **Implement Targeted Post-Discharge Programs**  
   Focus on patients aged 70+ and those discharged to skilled nursing or long-term care facilities.

2. **Enhance Medication Reconciliation Processes**  
   Closely monitor patients whose medications are adjusted during hospitalization to avoid adverse events leading to readmissions.

3. **Clinical Protocol Review for Chronic Cases**  
   Implement specialized care pathways for patients with diabetes (ICD codes `250.02`, `250.13`) to prevent unnecessary readmissions.

4. **Operational Improvements**  
   Review emergency admission workflows to prevent avoidable emergency-based readmissions.

---

## 📂 Repository Structure

```bash
/
├── README.md
├── data/
│   └── diabetic_cleaned.csv
├── sql/
│   └── (/diabetic_readmission_full_project.sql)
├── powerbi/
    └── Diabetic_Readmission_Dashboard.pbix



