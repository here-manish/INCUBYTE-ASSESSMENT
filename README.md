# INCUBYTE-ASSESSMENT
Sales Data Analysis - Data Craftsperson Assessment Analyzing a sales dataset to highlight key insights using SQL scripts. Includes exploration of total sales, product performance, customer segmentation, and return analysis.
# Sales Data Analysis - Data Craftsperson Assessment

## Overview
This repository contains the solution to the Data Craftsperson assessment, where I explore a sales dataset to generate key insights. The analysis focuses on understanding overall sales performance, product trends, customer behavior, and operational metrics using SQL queries. The dataset is loaded into a SQL environment, and SQL scripts are provided to derive meaningful business insights.

## Dataset
The dataset includes the following key columns:
- `TransactionID`: Unique identifier for each transaction
- `CustomerID`: Customer associated with the transaction
- `TransactionDate`: Date of transaction
- `TransactionAmount`: The amount of the transaction
- `ProductName`: Name of the product sold
- `City`, `Region`: Location details of the transaction
- `PaymentMethod`: Method of payment used
- `Quantity`, `DiscountPercent`: Number of items sold and any discounts applied
- `Returned`, `FeedbackScore`: Return status and customer feedback

## Key Insights and Metrics
The SQL queries provided in this repository highlight the following insights:

1. **Total Sales and Number of Transactions**:
    - SQL script: `total_sales.sql`
    - Highlights the overall sales performance and the total number of transactions.

2. **Top 5 Cities by Sales**:
    - SQL script: `top_cities_sales.sql`
    - Identifies the top cities contributing to total sales revenue.

3. **Best-Selling Products**:
    - SQL script: `product_sales.sql`
    - Lists the products with the highest revenue and number of sales.

4. **Customer Segmentation by Loyalty and Gender**:
    - SQL script: `customer_loyalty.sql`
    - Analyzes customer loyalty and behavior, segmented by gender.

5. **Return Analysis**:
    - SQL script: `return_analysis.sql`
    - Identifies products that are frequently returned by customers.

6. **Shipping Costs Across Regions**:
    - SQL script: `shipping_costs.sql`
    - Shows the variation in shipping costs across different regions.

## Project Structure
```bash
.
├── data                     # Contains dataset files
│   └── assessment_dataset.csv
├── sql                      # Contains SQL scripts for various analyses
│   ├── total_sales.sql
│   ├── top_cities_sales.sql
│   ├── product_sales.sql
│   ├── customer_loyalty.sql
│   ├── return_analysis.sql
│   └── shipping_costs.sql
├── notebooks                # Jupyter notebooks for exploration and documentation
│   └── sales_analysis.ipynb
└── README.md                # Project overview and instructions
