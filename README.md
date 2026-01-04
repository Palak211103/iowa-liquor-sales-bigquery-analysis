# Iowa Liquor Sales Analysis Using BigQuery SQL and Looker Studio

## 📌 Project Overview
This project analyzes the **Iowa Liquor Sales** public dataset using **Google BigQuery (Standard SQL)** and presents insights through an **interactive Looker Studio dashboard**.  
The analysis focuses on identifying long-term sales trends, seasonal patterns, and brand popularity using a large-scale dataset (~33 million records).

---

## 📊 Dataset
- **Source:** Google BigQuery Public Datasets  
- **Dataset Name:** Iowa Liquor Sales  
- **Table:** `bigquery-public-data.iowa_liquor_sales.sales`  
- **Dataset Size:** ~33 million rows  
- **Access Type:** Public (no download required)

> ℹ️ Due to the large size of the dataset, raw data is **not stored** in this repository.  
> All analysis is performed directly in BigQuery.

---

## 🧠 Business Questions Addressed
- What is the **overall trend** in liquor sales in Iowa over time?
- How do liquor sales vary by **month (seasonality)**?
- Which months show **peak and low sales**?
- Which liquor brands are the **most popular**, and how has their popularity changed over time?
- How do sales patterns differ across **years**?

---

## 🧮 SQL Analysis (BigQuery)
- Queries include:
  - Year-wise sales aggregation
  - Monthly seasonality analysis
  - Brand popularity over time
  - Top products by quantity sold

📂 **SQL File:**  
`sql/bigquery_iowa_liquor_analysis.sql`

> ⚠️ The SQL file contains only queries (no outputs).  
> This follows industry best practices for large datasets.  
> Results are visualized using Looker Studio.

🔗 **BigQuery Workspace:**  
https://console.cloud.google.com/bigquery?project=palak-project-482502

---

## 📈 Dashboard (Looker Studio)
An interactive dashboard was created to visualize insights derived from BigQuery queries.

### Dashboard Highlights
- **Iowa Liquor Sales Trend** – long-term sales growth
- **Monthly Sales Analysis** – seasonal patterns
- **Brand Popularity Over Time** – comparison of top brands
- **Sales Distribution by Month**

🔗 **Looker Studio Dashboard:**  
https://lookerstudio.google.com/u/0/reporting/093b07fb-ab2a-481f-b1d2-ef1e235a03ee/page/p_wrxzincozd/edit

---

## 🛠 Tools & Technologies
- **Google BigQuery** – scalable data analytics
- **SQL (Standard SQL)** – data querying and aggregation
- **Looker Studio** – dashboarding and visualization
- **GitHub** – version control and documentation

---

