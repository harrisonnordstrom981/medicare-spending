-- 02-base-clean.sql
-- Clean and type Medicare Part B data

CREATE OR REPLACE VIEW `project-3-medicare.medicare_data.vw_part_b_base` AS
SELECT
  HCPCS_Cd AS hcpcs_cd,
  HCPCS_Desc AS hcpcs_desc,
  Brnd_Name AS brand_name,
  Gnrc_Name AS generic_name,

  -- 2019
  CAST(Tot_Spndng_2019 AS FLOAT64) AS tot_spnd_2019,
  CAST(Tot_Dsg_Unts_2019 AS FLOAT64) AS tot_units_2019,
  CAST(Avg_Spndng_Per_Dsg_Unt_2019 AS FLOAT64) AS avg_spnd_unit_2019,

  -- 2020
  CAST(Tot_Spndng_2020 AS FLOAT64) AS tot_spnd_2020,
  CAST(Tot_Dsg_Unts_2020 AS FLOAT64) AS tot_units_2020,
  CAST(Avg_Spndng_Per_Dsg_Unt_2020 AS FLOAT64) AS avg_spnd_unit_2020,

  -- 2021
  CAST(Tot_Spndng_2021 AS FLOAT64) AS tot_spnd_2021,
  CAST(Tot_Dsg_Unts_2021 AS FLOAT64) AS tot_units_2021,
  CAST(Avg_Spndng_Per_Dsg_Unt_2021 AS FLOAT64) AS avg_spnd_unit_2021,

  -- 2022
  CAST(Tot_Spndng_2022 AS FLOAT64) AS tot_spnd_2022,
  CAST(Tot_Dsg_Unts_2022 AS FLOAT64) AS tot_units_2022,
  CAST(Avg_Spndng_Per_Dsg_Unt_2022 AS FLOAT64) AS avg_spnd_unit_2022,

  -- 2023
  CAST(Tot_Spndng_2023 AS FLOAT64) AS tot_spnd_2023,
  CAST(Tot_Dsg_Unts_2023 AS FLOAT64) AS tot_units_2023,
  CAST(Avg_Spndng_Per_Dsg_Unt_2023 AS FLOAT64) AS avg_spnd_unit_2023,

  CAST(CAGR_Avg_Spnd_Per_Dsg_Unt_19_23 AS FLOAT64) AS cagr_price_19_23

FROM `project-3-medicare.medicare_data.raw_data_b`;
