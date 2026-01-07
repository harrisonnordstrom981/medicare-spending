
---

## SQL Pipeline
Each SQL script represents a distinct step in the analysis:

1. **Raw Exploration** – Validate structure and data completeness  
2. **Base Cleaning** – Standardize fields and remove inconsistencies  
3. **Long Format Transformation** – Prepare data for time-series analysis  
4. **KPI Calculations** – Spending totals and price metrics  
5. **Top Drugs Analysis** – Identify highest-spending medications  
6. **Trend Analysis** – Year-over-year price trends using medians  

---

## Visualizations
The Tableau dashboard includes:
- **Total Drug Spending (2023)** – KPI summary
- **Top 10 Drugs by Spending** – Ranked bar chart
- **Median Price per Unit Over Time** – Trend analysis using medians to reduce outlier influence

Static screenshots of key visuals are stored in the `visuals/` folder.
<img width="799" height="495" alt="image" src="https://github.com/user-attachments/assets/36340a1d-5e77-45a2-8c60-898a5ec0967d" />

---

## Interactive Dashboard
View the interactive Tableau dashboard here:  
>>> https://public.tableau.com/views/MedicareSpending_17678070188000/Dashboard2?:language=en-US&publish=yes&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link <<<

---

## Tools Used
- SQL (Google BigQuery)
- Tableau Public
- GitHub

---

## Key Takeaways
- Medicare Part B drug spending is heavily concentrated among a small number of drugs.
- Median price per unit increased sharply during the COVID-era period before moderating.
- Median-based analysis provides a clearer picture of typical pricing trends than averages.

---

## Author
**Harrison Nordstrom**  
Data Analytics Portfolio  
GitHub: https://github.com/harrisonnordstrom981
