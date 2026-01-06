-- 03_part_b_long.sql
-- Purpose: Convert Part B wide format -> long format (one row per drug-year)

CREATE OR REPLACE VIEW `project-3-medicare.medicare_data.vw_part_b_long` AS
SELECT
  hcpcs_cd,
  hcpcs_desc,
  brand_name,
  generic_name,
  y.year,
  y.tot_spndng,
  y.tot_dsg_unts,
  y.tot_clms,
  y.tot_benes,
  y.avg_spnd_per_unit,
  y.avg_spnd_per_clm,
  y.avg_spnd_per_bene,
  y.outlier_flag
FROM `project-3-medicare.medicare_data.vw_part_b_base`,
UNNEST([
  STRUCT(
    2019 AS year,
    tot_spndng_2019 AS tot_spndng,
    tot_dsg_unts_2019 AS tot_dsg_unts,
    tot_clms_2019 AS tot_clms,
    tot_benes_2019 AS tot_benes,
    avg_spnd_per_unit_2019 AS avg_spnd_per_unit,
    avg_spnd_per_clm_2019 AS avg_spnd_per_clm,
    avg_spnd_per_bene_2019 AS avg_spnd_per_bene,
    outlier_flag_2019 AS outlier_flag
  ),
  STRUCT(2020, tot_spndng_2020, tot_dsg_unts_2020, tot_clms_2020, tot_benes_2020, avg_spnd_per_unit_2020, avg_spnd_per_clm_2020, avg_spnd_per_bene_2020, outlier_flag_2020),
  STRUCT(2021, tot_spndng_2021, tot_dsg_unts_2021, tot_clms_2021, tot_benes_2021, avg_spnd_per_unit_2021, avg_spnd_per_clm_2021, avg_spnd_per_bene_2021, outlier_flag_2021),
  STRUCT(2022, tot_spndng_2022, tot_dsg_unts_2022, tot_clms_2022, tot_benes_2022, avg_spnd_per_unit_2022, avg_spnd_per_clm_2022, avg_spnd_per_bene_2022, outlier_flag_2022),
  STRUCT(2023, tot_spndng_2023, tot_dsg_unts_2023, tot_clms_2023, tot_benes_2023, avg_spnd_per_unit_2023, avg_spnd_per_clm_2023, avg_spnd_per_bene_2023, outlier_flag_2023)
]) AS y
WHERE y.tot_spndng IS NOT NULL;
