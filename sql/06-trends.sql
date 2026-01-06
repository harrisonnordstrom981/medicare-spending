-- 06_part_b_trends.sql
-- Purpose: Trends over time + YoY change in avg spending per dosage unit

CREATE OR REPLACE VIEW `project-3-medicare.medicare_data.vw_part_b_trends` AS
WITH base AS (
  SELECT
    hcpcs_cd,
    COALESCE(NULLIF(brand_name, ''), NULLIF(generic_name, ''), hcpcs_desc) AS drug_name,
    year,
    tot_spndng,
    tot_dsg_unts,
    tot_clms,
    tot_benes,
    avg_spnd_per_unit,
    outlier_flag
  FROM `project-3-medicare.medicare_data.vw_part_b_long`
)
SELECT
  *,
  LAG(avg_spnd_per_unit) OVER (PARTITION BY hcpcs_cd ORDER BY year) AS prev_avg_spnd_per_unit,
  SAFE_DIVIDE(
    avg_spnd_per_unit - LAG(avg_spnd_per_unit) OVER (PARTITION BY hcpcs_cd ORDER BY year),
    NULLIF(LAG(avg_spnd_per_unit) OVER (PARTITION BY hcpcs_cd ORDER BY year), 0)
  ) AS yoy_pct_change_avg_spnd_per_unit
FROM base;
