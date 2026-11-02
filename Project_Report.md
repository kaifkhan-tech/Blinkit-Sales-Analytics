# PROJECT REPORT
## Blinkit Sales Data Analysis Using SQL and Power BI

**Submitted by:** Mohammad Kaif  
**University:** Integral University, Lucknow  
**Program:** BBA-BA (IBM), 2nd Year / 3rd Semester

## 1. Abstract
This project demonstrates retail sales analysis using SQL and Power BI concepts. The sample dataset contains product information, outlet characteristics, sales amounts, visibility, and ratings. SQL is used to aggregate sales and compare categories and outlets. Power BI dashboard measures and visual design are documented to communicate findings in a clear visual form.

## 2. Introduction
Retail organizations need to understand which categories and outlet formats contribute to sales. Data analysis converts structured records into summaries that can support inventory planning, merchandising, and outlet performance review. Blinkit is used here as a grocery retail case-study theme; the data is an educational generated sample, not company-internal information.

## 3. Objectives
- Calculate overall sales, average sales, record count, and average rating.
- Compare sales across item categories, fat content, outlet types, outlet sizes, and location tiers.
- Examine outlet establishment year against sales.
- Write SQL queries and define Power BI DAX measures.
- Recommend practical retail actions based on sample patterns.

## 4. Dataset description
The sample includes 600 rows and 12 fields: Item_Fat_Content, Item_Identifier, Item_Type, Outlet_Establishment_Year, Outlet_Identifier, Outlet_Location_Type, Outlet_Size, Outlet_Type, Item_Visibility, Item_Weight, Sales, and Rating. Values are generated for practice. A public reference dataset is linked in README.

## 5. Methodology
1. Create a database and table in MySQL.
2. Import CSV sample data through MySQL Workbench.
3. Run SQL queries to summarize overall and segmented sales.
4. Import CSV into Power BI Desktop.
5. Define DAX measures and build KPI cards and charts.
6. Interpret summaries and write recommendations.

## 6. Analysis and sample results
- Total sales: ₹110,289.08.
- Average sales per record: ₹183.82.
- Record count: 600.
- Average rating: 3.70/5.
- Highest sales item category in this sample: Household (₹9,143.59).
- Highest sales outlet type in this sample: Supermarket Type1 (₹72,375.77).
- Highest sales location tier in this sample: Tier 1 (₹38,493.92).

These are findings from the generated sample only and may change when a different dataset is loaded.

## 7. Dashboard design
Recommended dashboard contains four KPI cards, sales by item type bar chart, sales by outlet type column chart, fat-content donut chart, sales by location tier column chart, sales by establishment year line chart, outlet-type summary matrix, and slicers for item type, outlet type, outlet size, tier, and fat content.

## 8. Recommendations
- Compare category-level sales before planning product assortment.
- Review outlet formats with lower sales and ratings for potential operational causes.
- Use location-tier comparisons to plan local promotions.
- Interpret item visibility together with sales; visibility alone is not proof of causation.
- Re-run analysis on a verified public dataset for final academic conclusions.

## 9. Limitations
This bundle uses generated values for demonstration. It does not contain actual Blinkit sales, order history, customer personal data, or proprietary records. Power BI Desktop is needed to create the native `.pbix` file.

## 10. Conclusion
The project illustrates an end-to-end analytics workflow from CSV data preparation to SQL aggregation and Power BI dashboard design. It helps practice database querying, KPI calculation, data visualization, and business interpretation. Its conclusions are illustrative because the dataset is simulated.

## References
- Public practice dataset reference: https://www.kaggle.com/datasets/arunkumaroraon/blinkit-grocery-dataset
- MySQL documentation: https://dev.mysql.com/doc/
- Power BI documentation: https://learn.microsoft.com/power-bi/
