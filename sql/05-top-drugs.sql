-- 05-top-drugs.sql
-- Top Medicare Part B drugs by spending (2023)

CREATE OR REPLACE VIEW `project-3-medicare.medicare_data.vw_part_b_top_spending_2023` AS
SELECT
  hcpcs_cd,
  drug_name,
  total_spending
FROM `project-3-medicare.medicare_data.vw_part_b_long`
WHERE year = 2023
ORDER BY total_spending DESC
LIMIT 20;
