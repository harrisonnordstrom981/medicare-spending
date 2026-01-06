-- 02_part_b_clean_base.sql
-- Purpose: Create a clean Part B base view with consistent types

CREATE OR REPLACE VIEW `project-3-medicare.medicare_data.vw_part_b_base` AS
SELECT
  CAST(HCPCS_Cd AS STRING) AS hcpcs_cd,
  CAST(HCPCS_Desc AS STRING) AS hcpcs_desc,
  CAST(Brnd_Name AS STRING) AS brand_name,
  CAST(Gnrc_Name AS STRING) AS generic_name,

  -- 2019
  CAST(Tot_Spndng_2019 AS FLOAT64) AS tot_spndng_2019,
  CAST(Tot_Dsg_Unts_2019 AS FLOAT64) AS tot_dsg_unts_2019,
  CAST(Tot_Clms_2019 AS FLOAT64) AS tot_clms_2019,
  CAST(Tot_Benes_2019 AS FLOAT64) AS tot_benes_2019,
  CAST(Avg_Spndng_Per_Dsg_Unt_2019 AS FLOAT64) AS avg_spnd_per_unit_2019,
  CAST(Avg_Spndng_Per_Clm_2019 AS FLOAT64) AS avg_spnd_per_clm_2019,
  CAST(Avg_Spndng_Per_Bene_2019 AS FLOAT64) AS avg_spnd_per_bene_2019,
  CAST(Outlier_Flag_2019 AS INT64) AS outlier_flag_2019,

  -- 2020
  CAST(Tot_Spndng_2020 AS FLOAT64) AS tot_spndng_2020,
  CAST(Tot_Dsg_Unts_2020 AS FLOAT64) AS tot_dsg_unts_2020,
  CAST(Tot_Clms_2020 AS FLOAT64) AS tot_clms_2020,
  CAST(Tot_Benes_2020 AS FLOAT64) AS tot_benes_2020,
  CAST(Avg_Spndng_Per_Dsg_Unt_2020 AS FLOAT64) AS avg_spnd_per_unit_2020,
  CAST(Avg_Spndng_Per_Clm_2020 AS FLOAT64) AS avg_spnd_per_clm_2020,
  CAST(Avg_Spndng_Per_Bene_2020 AS FLOAT64) AS avg_spnd_per_bene_2020,
  CAST(Outlier_Flag_2020 AS INT64) AS outlier_flag_2020,

  -- 2021
  CAST(Tot_Spndng_2021 AS FLOAT64) AS tot_spndng_2021,
  CAST(Tot_Dsg_Unts_2021 AS FLOAT64) AS tot_dsg_unts_2021,
  CAST(Tot_Clms_2021 AS FLOAT64) AS tot_clms_2021,
  CAST(Tot_Benes_2021 AS FLOAT64) AS tot_benes_2021,
  CAST(Avg_Spndng_Per_Dsg_Unt_2021 AS FLOAT64) AS avg_spnd_per_unit_2021,
  CAST(Avg_Spndng_Per_Clm_2021 AS FLOAT64) AS avg_spnd_per_clm_2021,
  CAST(Avg_Spndng_Per_Bene_2021 AS FLOAT64) AS avg_spnd_per_bene_2021,
  CAST(Outlier_Flag_2021 AS INT64) AS outlier_flag_2021,

  -- 2022
  CAST(Tot_Spndng_2022 AS FLOAT64) AS tot_spndng_2022,
  CAST(Tot_Dsg_Unts_2022 AS FLOAT64) AS tot_dsg_unts_2022,
  CAST(Tot_Clms_2022 AS FLOAT64) AS tot_clms_2022,
  CAST(Tot_Benes_2022 AS FLOAT64) AS tot_benes_2022,
  CAST(Avg_Spndng_Per_Dsg_Unt_2022 AS FLOAT64) AS avg_spnd_per_unit_2022,
  CAST(Avg_Spndng_Per_Clm_2022 AS FLOAT64) AS avg_spnd_per_clm_2022,
  CAST(Avg_Spndng_Per_Bene_2022 AS FLOAT64) AS avg_spnd_per_bene_2022,
  CAST(Outlier_Flag_2022 AS INT64) AS outlier_flag_2022,

  -- 2023
  CAST(Tot_Spndng_2023 AS FLOAT64) AS tot_spndng_2023,
  CAST(Tot_Dsg_Unts_2023 AS FLOAT64) AS tot_dsg_unts_2023,
  CAST(Tot_Clms_2023 AS FLOAT64) AS tot_clms_2023,
  CAST(Tot_Benes_2023 AS FLOAT64) AS tot_benes_2023,
  CAST(Avg_Spndng_Per_Dsg_Unt_2023 AS FLOAT64) AS avg_spnd_per_unit_2023,
  CAST(Avg_Spndng_Per_Clm_2023 AS FLOAT64) AS avg_spnd_per_clm_2023,
  CAST(Avg_Spndng_Per_Bene_2023 AS FLOAT64) AS avg_spnd_per_bene_2023,
  CAST(Outlier_Flag_2023 AS INT64) AS outlier_flag_2023,

  -- optional precomputed growth fields (keep if present)
  CAST(Avg_DY23_ASP_Price AS FLOAT64) AS avg_dy23_asp_price,
  CAST(Chg_Avg_Spndng_Per_Dsg_Unt_22_23 AS FLOAT64) AS chg_avg_spnd_per_unit_22_23,
  CAST(CAGR_Avg_Spnd_Per_Dsg_Unt_19_23 AS FLOAT64) AS cagr_avg_spnd_per_unit_19_23

FROM `project-3-medicare.medicare_data.raw_data_b`;
