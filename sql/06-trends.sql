-- 06-trends.sql
-- Price and spending trends over time

CREATE OR REPLACE VIEW `project-3-medicare.medicare_data.vw_part_b_trends` AS
SELECT
  hcpcs_cd,
  drug_name,
  year,
  total_spending,
  avg_spending_per_unit,
  LAG(avg_spending_per_unit) OVER (
    PARTITION BY hcpcs_cd
    ORDER BY year
  ) AS prev_year_price,
  SAFE_DIVIDE(
    avg_spending_per_unit
    - LAG(avg_spending_per_unit) OVER (PARTITION BY hcpcs_cd ORDER BY year),
    LAG(avg_spending_per_unit) OVER (PARTITION BY hcpcs_cd ORDER BY year)
  ) AS yoy_price_change
FROM `project-3-medicare.medicare_data.vw_part_b_long`;
