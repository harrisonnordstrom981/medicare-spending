-- 03-part-b-format-long.sql
-- Convert wide year columns into long format

CREATE OR REPLACE VIEW `project-3-medicare.medicare_data.vw_part_b_long` AS
SELECT
  hcpcs_cd,
  hcpcs_desc,
  COALESCE(brand_name, generic_name) AS drug_name,
  year,
  total_spending,
  total_units,
  avg_spending_per_unit
FROM `project-3-medicare.medicare_data.vw_part_b_base`,
UNNEST([
  STRUCT(2019 AS year, tot_spnd_2019 AS total_spending, tot_units_2019 AS total_units, avg_spnd_unit_2019 AS avg_spending_per_unit),
  STRUCT(2020, tot_spnd_2020, tot_units_2020, avg_spnd_unit_2020),
  STRUCT(2021, tot_spnd_2021, tot_units_2021, avg_spnd_unit_2021),
  STRUCT(2022, tot_spnd_2022, tot_units_2022, avg_spnd_unit_2022),
  STRUCT(2023, tot_spnd_2023, tot_units_2023, avg_spnd_unit_2023)
]);
