-- 04-kpi-focus.sql
-- KPI summary for latest year (2023)

CREATE OR REPLACE VIEW `project-3-medicare.medicare_data.vw_part_b_kpis_2023` AS
SELECT
  SUM(total_spending) AS total_spending_2023,
  COUNT(DISTINCT hcpcs_cd) AS unique_drugs_2023,
  AVG(avg_spending_per_unit) AS avg_price_per_unit_2023
FROM `project-3-medicare.medicare_data.vw_part_b_long`
WHERE year = 2023;
