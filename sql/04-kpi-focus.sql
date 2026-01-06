-- 04_part_b_kpis.sql
-- Purpose: KPI summary (2023)

CREATE OR REPLACE VIEW `project-3-medicare.medicare_data.vw_part_b_kpis_2023` AS
SELECT
  2023 AS year,
  SUM(tot_spndng) AS total_spending,
  SUM(tot_clms) AS total_claims,
  SUM(tot_benes) AS total_beneficiaries,
  AVG(avg_spnd_per_unit) AS avg_spending_per_unit,
  AVG(avg_spnd_per_bene) AS avg_spending_per_beneficiary
FROM `project-3-medicare.medicare_data.vw_part_b_long`
WHERE year = 2023;
