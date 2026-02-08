# E-commerce Sales Analysis (End-to-End Project)

## Why This Project?
E-commerce platforms generate massive transactional data, but raw data alone does not answer real business questions.

This project demonstrates how to:
- Transform raw transactional data into a clean analytical fact table
- Define meaningful business metrics
- Identify revenue patterns, product concentration, and customer behavior
- Communicate insights through a clear executive-level dashboard

The focus of this project is **business-oriented analysis**, not academic modeling.

---

## Dataset & Sources
This project uses the **Brazilian E-Commerce Public Dataset (Olist)**.

### Data Source
- Kaggle: Brazilian E-Commerce Public Dataset by Olist  
  https://www.kaggle.com/datasets/olistbr/brazilian-ecommerce

### Main Tables Used
- Customers
- Orders
- Order Items
- Products
- Product Category Translation

### Dataset Overview
- Approximately 96K orders
- Around 93K unique customers
- Transactions across multiple years
- Dozens of product categories

---

## Tools & Technology Stack
- **Python (pandas, numpy)**  
  Used for data cleaning, transformation, and feature engineering
- **SQL (MySQL)**  
  Used for analytical queries and metric validation
- **Power BI**  
  Used for dashboarding and business storytelling
- **Git & GitHub**  
  Used for version control and portfolio presentation

---

## Data Modeling Approach
A unified `fact_sales` table was built at the **order-item level** to support flexible analysis.

### Key Modeling Decisions
- The analysis initially used `customer_id` for customer behavior analysis
- It was discovered that `customer_id` does not represent a real customer across multiple orders
- The model was corrected by switching to `customer_unique_id`

### Why This Matters
- Using the wrong identifier resulted in misleading repeat-customer results
- Switching to `customer_unique_id` enabled accurate retention analysis
- This highlights the importance of choosing the correct data grain in analytics

---

## Key Business Metrics
- **Total Revenue:** 13.2M
- **Orders Count:** 96K
- **Average Order Value (AOV):** 137
- **Customers:** 93K
- **Repeat Customers:** 2,801
- **Repeat Customer Rate:** ~3%

---

## Key Insights
- Revenue shows strong growth over time, indicating successful business scaling
- Sales are concentrated in a limited number of top product categories
- Approximately 26% of products generate 80% of total revenue (Pareto effect)
- Repeat customer rate is relatively low, suggesting a strong acquisition-driven model and a significant opportunity to improve customer retention

---

## Dashboard Overview
The Power BI dashboard provides:
- Executive KPI overview
- Monthly revenue trend
- Top 10 product categories by revenue

The dashboard is designed to be readable in under two minutes by non-technical stakeholders.

(Screenshots of the dashboard are included in the repository)

---

## Limitations
- No product cost data is available, so profit margin analysis was intentionally excluded
- The analysis is descriptive rather than predictive
- Customer behavior analysis is based on historical transactions only

---

## What I Learned
- How incorrect identifiers can completely distort analytical results
- The importance of data grain and modeling decisions
- How to translate raw data into business-ready insights
- Building clean dashboards that prioritize clarity over complexity

---

## Next Steps
- Customer cohort and retention analysis
- Geographic performance analysis
- Integration with marketing or channel-level data




---

## Final Note
This project reflects a **real-world analytical workflow**, focusing on:
- Correct data modeling
- Clear business questions
- Actionable insights over technical complexity
