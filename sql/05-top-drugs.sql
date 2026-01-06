-- 05_part_b_top_drugs.sql
-- Purpose: Rank drugs by total spending (2023)

CREATE OR REPLACE VIEW `project-3-medicare.medicare_data.vw_part_b_top_spending_2023` AS
SELECT
  hcpcs_cd,
  COALESCE(NULLIF(brand_name, ''), NULLIF(generic_name, ''), hcpcs_desc) AS drug_name,
  tot_spndng,
  tot_benes,
  tot_clms,
  avg_spnd_per_unit,
  outlier_flag
FROM `project-3-medicare.medicare_data.vw_part_b_long`
WHERE year = 2023
ORDER BY tot_spndng DESC;
