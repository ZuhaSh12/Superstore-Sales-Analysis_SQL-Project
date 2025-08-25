# 📊 Superstore Sales Analysis Project

## 🔹 Project Overview
This project is an **end-to-end Data Analytics case study** on the Superstore dataset.  
The goal is to replicate a real-world **Data Analyst workflow** — from raw data to actionable insights — using:  

- **SQL** → for data cleaning and querying  
- **Python** → for Exploratory Data Analysis (EDA) and visualization  
- **Power BI** → for creating interactive dashboards for decision-making  

The analysis focuses on answering **key business questions** related to sales, profitability, customer segmentation, discounts, and regional performance.

---

## 🔹 Dataset
- **Dataset**: Superstore Sales Data  
- **Records**: ~10,000 rows  
- **Features**:
  - **Order Details** → Order ID, Order Date, Ship Date, Ship Mode  
  - **Customer Info** → Customer ID, Name, Segment  
  - **Product Info** → Product ID, Category, Sub-Category, Product Name  
  - **Geography** → Country, Region, State, City, Postal Code  
  - **Sales Metrics** → Sales, Quantity, Discount, Profit  

This dataset simulates a retail company’s operations and helps in practicing real-world business analysis.

---

## 🔹 Business Objectives
The business team is interested in insights that support **strategic decision-making**. Key questions:  

1. **Overall Performance**
   - What are the total **Sales, Profit, and Orders** by year/quarter/month?
   - Are there noticeable **seasonal trends**?  

2. **Customer Insights**
   - Who are the **top customers** by sales and profit?
   - How do different **customer segments** perform?  

3. **Regional Insights**
   - Which **states/regions** drive the most sales and profit?
   - Which locations need improvement due to low profitability?  

4. **Product Analysis**
   - Which **categories and sub-categories** are most profitable?
   - Which products generate high sales but low profit?  

5. **Discount Impact**
   - How do discounts affect profitability?
   - Are there optimal discount ranges?  

---

## 🔹 Data Cleaning (SQL)
Data cleaning was performed in **MySQL** to ensure accuracy and consistency before analysis.  

Steps included:  
- **Removing duplicates** based on `Order ID + Product ID`.  
- **Handling NULLs** in `Postal Code` and other non-critical fields.  
- **Standardizing text values** (trimming spaces, fixing casing in Region/Category).  
- **Correcting date formats** for `Order Date` and `Ship Date`.  
- **Checking invalid entries** such as negative values in `Sales` or `Profit`.  

This ensured a clean and reliable dataset for further analysis.  

---

## 🔹 SQL Analysis
After cleaning, SQL queries were written to extract key insights:  

- **Sales & Profit Trends**  
  Aggregate sales and profit by year, quarter, and month.  

- **Top Customers & Orders**  
  Identify customers contributing the most to revenue and profit.  

- **Regional & State Performance**  
  Compare sales and profit across regions and states.  

- **Category & Sub-category Analysis**  
  Find high-performing and low-performing categories/products.  

- **Discount vs Profitability**  
  Examine how discounts influence overall profit margins.  

These queries provided the foundation for further Python and Power BI analysis.

---

## 🔹 Python EDA & Visualization
Using **Pandas, Matplotlib, and Seaborn**, the cleaned dataset was analyzed in detail.  

Key analyses and visualizations:  
1. **Sales & Profit Over Time** → Line plots for monthly/quarterly trends.  
2. **Regional Analysis** → Bar charts & heatmaps of region/state sales & profit.  
3. **Customer Segmentation** → Distribution of sales by customer segment.  
4. **Top Products** → Horizontal bar plots for top-selling and most-profitable products.  
5. **Discount vs Profit** → Scatterplots showing correlation between discount percentage and profit margin.  
6. **Category/Sub-Category Performance** → Tree maps and grouped bar charts.  

This step provided deeper **statistical and visual insights** before dashboarding.

---

## 🔹 Power BI Dashboard
To make insights **interactive and business-friendly**, a Power BI dashboard was created.  

Dashboard features:  
- **KPIs**: Total Sales, Total Profit, Number of Orders.  
- **Filters/Slicers**: Year, Region, Category, Segment.  
- **Visuals**:
  - Line chart for sales/profit trends  
  - Map visualization for state-level sales  
  - Bar charts for top customers/products  
  - Tree map for sub-category contribution  
  - Scatterplot for discount vs profit analysis  

This allows non-technical stakeholders to **explore insights dynamically**.  

---

## 🔹 Tech Stack
- **SQL (MySQL)** → Data cleaning & querying  
- **Python (Pandas, Matplotlib, Seaborn)** → Data exploration & visualization  
- **Power BI** → Business reporting & dashboards  

---

## 🔹 Key Insights
- **Technology category** generates the highest profits, while **Furniture** lags behind.  
- The **West region** is most profitable, while some states in the **South** struggle with losses.  
- **Top 20% of customers** drive the majority of sales and profits.  
- **Excessive discounts** reduce profitability significantly.  
- Some products have **high sales but negative profit**, highlighting pricing/discount issues.  

---

## 🔹 How to Use
1. Import dataset into MySQL and run SQL scripts for data cleaning.  
2. Run Python notebook (Colab/Jupyter) for EDA and visualization.  
3. Open Power BI file to explore interactive dashboards.  

---

## 🔹 Future Enhancements
- Automating data cleaning and ETL pipeline.  
- Adding **time series forecasting** for sales prediction.  
- Performing **customer segmentation (clustering)**.  
- Building a **real-time Power BI dashboard** connected to SQL database.  

---


---


