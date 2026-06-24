# 📡 Telecom Customer Churn Prediction

An end-to-end data analytics project covering SQL-based data preparation, machine learning churn prediction using Random Forest, and an interactive Power BI dashboard for business insights.

---

## 🗂️ Project Overview

Customer churn is one of the most critical challenges in the telecom industry. This project analyses churn patterns across ~6,000 customers, builds a predictive model to identify at-risk customers, and visualises findings in a 3-page Power BI dashboard.

**Tech Stack:** SQL Server · Python (scikit-learn) · Power BI · Jupyter Notebook

---

## 📁 Repository Structure

```
Telecom-Customer-Churn-Prediction/
│
├── README.md
├── SQL Queries/
│   ├── 01_create_database.sql       # Database and table setup
│   ├── 02_data_exploration.sql      # Initial data exploration
│   ├── 03_null_check.sql            # Data quality and null handling
│   ├── 04_create_views.sql          # Analytical views for Power BI
│   └── 05_prod_table.sql            # Production-ready table creation
│
├── churn_prediction_model.ipynb     # Random Forest ML model (Jupyter Notebook)
├── Predictions.csv                  # Model output — predicted churners
├── Churn_Analysis_Prediction.pbix   # Power BI dashboard (3 pages)
└── assets/                          # Dashboard screenshots
```

---

## 🔄 Project Pipeline

```
Raw Data → SQL Server (Cleaning & Views) → Python / Random Forest → Predictions.csv → Power BI Dashboard
```

1. **SQL** — loaded raw telecom data into SQL Server, performed null checks, data exploration, and created analytical views
2. **Python (ML)** — trained a Random Forest classifier to predict churn probability per customer
3. **Power BI** — connected predictions back into the dashboard for a unified analysis and prediction view

---

## 📊 Dashboard Pages

### Page 1 — Churn Analysis Summary
High-level KPIs and breakdown of churn patterns across demographics, account info, geography, and services used.

| Metric | Value |
|--------|-------|
| Total Customers | ~6,000 |
| New Joiners | 411 |
| Total Churned | ~2,000 |
| Overall Churn Rate | 27.0% |

**Key Visuals:**
- Churn rate by gender, age group, tenure, contract type, payment method
- Geographic churn rate (Top 5 states) — Jammu & Kashmir leads at 57.2%
- Churn by internet type — Fiber Optic at 57.9%
- Services churn breakdown (Unlimited Data, Streaming TV, Phone Service, etc.)

### Page 2 — Churn Reason Analysis
Drill-down reference table showing granular churn reasons — Competitor-related reasons dominate (better devices, better offers, higher speeds).

### Page 3 — Churn Prediction
ML-powered prediction page identifying the 378 customers most at risk of churning.

**Predicted Churner Profile:**
- 246 Female · 132 Male
- Majority on Month-to-Month contracts (355 of 378)
- Largest tenure group: ≥ 24 months (106 customers)
- Top payment method: Credit Card (192 customers)
- States most at risk: Uttar Pradesh (44), Maharashtra (40), Tamil Nadu (37)

---

## 🤖 Machine Learning Model

- **Algorithm:** Random Forest Classifier
- **Notebook:** `churn_prediction_model.ipynb`
- **Output:** `Predictions.csv` — used as a data source in Power BI

> **Note:** Model accuracy and classification report available in the notebook.

**Features used:** Demographics (gender, age, marital status), account info (contract type, payment method, tenure), service usage (internet type, streaming, online security, etc.), financial metrics (monthly charge, total revenue, total refunds)

---

## 💡 Key Findings

- **Month-to-month contracts** drive the highest churn — 46.5% churn rate vs 11% (one year) and 2.7% (two year)
- **Fiber Optic users** churn at nearly 58% — a major service quality signal
- **Competitor pressure** is the #1 churn reason — better offers and devices
- **Early tenure customers (<6 months)** are at elevated risk, but long-tenure customers (≥24 months) still represent the largest predicted churn group in absolute numbers
- **Mailed check payment method** has the highest churn rate (37.8%) — likely older, less engaged customers

---

## 📌 Dataset

Publicly available telecom customer dataset with demographic, service, account, and churn information for ~6,000 Indian telecom subscribers.

---

## 👤 Author

**Pinaki Kalita**
Data Analyst | Economist by Education, Analyst by Practice
[LinkedIn](https://www.linkedin.com/in/pinakikalita) · [GitHub](https://github.com/pinakikalitawork-A28)
