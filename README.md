# Jcars-Logistics-Analsis
An end-to-end Business Intelligence project that transforms raw logistics and vehicle sales data into actionable insights using PostgreSQL, SQL, and Microsoft Power BI.

## Overview
This project demonstrates the complete data analytics workflow from data cleaning in PostgreSQL to building an interactive Power BI dashboard. The dashboard helps analyse sales performance, customer behaviour, logistics efficiency, payment status, and overall business performance.

## Objective
- Import raw sales data into PostgreSQL.
- Clean and transform the data using PostgreSQL.
- Build a Power BI data model.
- Create DAX measures for key business metrics.
- Design interactive dashboards.
- Generate business insights and recommendations.

## Data Cleaning
Before creating a Power BI dashboard, the raw dataset was imported into PostgreSQL and cleaned to improve data quality and ensure accurate reporting. The original data was preserved while a cleaned analytical layer was created for analyisis.

## Data quality issues identified
- Duplicate order records.
- Missing (NULL) values in key fields.
- Inconsistent date formats.
- Currency symbols (`KES`, `KSh`) and comma separators in numeric fields.
- Invalid and inconsistent discount values.
- Mixed text formatting (uppercase, lowercase, misspellings).
- Inconsistent vehicle make, models, and transmission types.
- Incorrect payment and delivery status values.
- Unrealistic customer ages and vehicle years.
- Invalid or incomplete order IDs.

## Cleaning steps performed
- Removed duplicate records.
- Standardised text values using consistent naming conventions.
- Converted date columns into a standard date format.
- Removed currency symbols and converted monetary values to numeric data types.
- Converted percentage values into decimal format where required.
- Corrected inconsistent categorical values (vehicle make, payment status, delivery status, fuel   type and transmission).
- Replaced invalid or missing values where appropriate and flagged records requiring further review.

## Outcome
The cleaned dataset provided;
1. Improved data accuracy and consitency.
2. Reliable KPI calcualtions.
3. Better dashboard performance
4. Accurate business insights for decision making.

---

# Dashboard Pages
1. **Executive Overview**

Provides a high level summary of the business using Key performance indicators, including;
- Monthly Revenue and Profit Trends.
- Revenue by Sales Representative.
- Revenue by Vehicle Model.
- Revenue by County and Delivery Status.

![image alt](https://github.com/young-odhiambo/Jcars-Logistics-Analsis/blob/ee12c01f36ac2f4737456ba8ca12af9c4ccd9a1c/Screenshot%202026-07-30%20015332.png)

2. **Sales and Vehicle performance**

Focuses on analysing sales performance across different categories and sales channels.

Displays;
- Revenue by Vehicle Make.
- Gross Profit by Vehicle Model.
- Gross Profit by Branch.
- Vehicle type by vehicle year.
- Lead source by sales representative.

![image alt](https://github.com/young-odhiambo/Jcars-Logistics-Analysis/blob/43e125fa0a670fbdb1ef896a1f9a30c35024a8f8/Screenshot%202026-07-29%20140730.png)

3. **Customer and Payment Analysis**

Provide insights into customer behaviour and payment performance.

Displays;
- Top 10 customers by revenue.
- Revenue by payment method.
- Customer type by age group.
- Outstanding revenue per order.
- Payment status by payment method

![image alt](https://github.com/young-odhiambo/Jcars-Logistics-Analysis/blob/8f9b5ffaa68a29ecf6d380239954e8fa0fa8672b/Screenshot%202026-07-29%20140748.png)

4. **Logistics and Operations**

Evaluates delivery efficiency and operational performance.

Displays;
- Average days by region.
- Revenue by Delivery Status.
- Logistics Cost by Branch.
- Delivery status distribution.
- Revenue by county.

![image alt](https://github.com/young-odhiambo/Jcars-Logistics-Analysis/blob/a45afc0e3c46f2bbe9f21f01444bd48554603761/Screenshot%202026-07-30%20024050.png)

---

# Insights

JCars Logistics generated approximately KSh 1.38 billion in recorded revenue from 254 orders and 417 vehicles sold, achieving a gross profit of KSh 363.4 million and an overall gross margin of 21%.
However, the business also has KSh 651.3 million in outstanding revenue, indicating significant cash collection challenges. Average delivery time stands at 36 days, while the average customer rating is 3.6/5, suggesting room for improvement in customer experience.

## Key Insights
- Toyota Kenya generated highest revenue among all vehicle manufacturers outperforming Mazda, Mercedes-Benz, Mitsubishi, Subaru, Honda Motors, Isuzu, Nissan, Volkswagen, and BMW.
- Prado TX is the best performing vehicle model followed by Land Cruiser, Harrier, CX-5 and C200. These models represents the company's most profitable inventory.
- SUVs generated substantially more revenue and units sold than Sedans, Pickups, Hatchbacks, Crossovers, Wagons, Vans, Trucks, and Saloons. This suggests that customer demand is heavily concentrated in the SUV segment.
- Among the sales team, Faith Achieng generated the highest sales revenue, while Peter Kiptoo generated the lowest revenue. Sales rep performance demonstrates strong sales effectiveness.
- The Walk-In lead source contributed the highest gross profit compared with Website, Instagram, Corporate Tender, Facebook, and Phone Call channels. This indicates that physical showroom traffic remains the company's most valuable acquisition channel.
- Car Dealers generated the largest share of revenue.
- Most revenue was collected through M-Pesa, making it the dominant payment method.
-  Outstanding revenue totals KSh 651.3 million, with **Thika Branch** recording the largest unpaid balance.
-  Completed deliveries generated approximately KSh 817 million of the revenue, while In Transit, At Yard, Delayed, and Cancelled orders contributed significantly less.
-  Among all counties, Kiambu generated the highest revenue.
-  The average delivery time is approximately 36 days, which is relatively long for vehicle deliveries and may negatively affect customer satisfaction, reflected by the average customer rating of 3.6 out of 5.


## Recommendations

- Prioritise inventory for Toyota Kenya, especially Prado TX and Land Cruiser, due to their strong revenue performance.
- Strengthen debt collection efforts, particularly in Thika Branch, to reduce the high level of outstanding revenue.
- Increase investment in Walk-In marketing and customer experience, as it generates the highest gross profit.
- Replicate the sales strategies used by Faith Achieng and other top-performing sales representatives across the wider sales team.
- Optimise delivery operations to reduce the average delivery time and improve customer satisfaction.
- Continue promoting M-Pesa as the primary payment method while encouraging faster settlement of pending and partially paid orders.


---

# Tools Used

- PostgreSQL
- DBeaver.
- Aiven.
- Microsoft Power BI
- Power BI service
- DAX
- Git & Git Bash.

---

# Repository Structure

```
Jcars-Logistics-Analysis
|
|--Data/
|   |-car_sales.csv/
|
|--SQL/
|   |-Project_Logistics.sql/
|
|--Power BI/
|      |--Logistics_project.pbix/
|--Images/

```




 
