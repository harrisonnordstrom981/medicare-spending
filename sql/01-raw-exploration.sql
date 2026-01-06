-- 01-raw-exploration.sql
-- Basic exploration of Medicare Part B raw data

SELECT
  COUNT(*) AS row_count
FROM `project-3-medicare.medicare_data.raw_data_b`;

-- Preview columns and values
SELECT
  *
FROM `project-3-medicare.medicare_data.raw_data_b`
LIMIT 50;

-- Check for missing key identifiers
SELECT
  COUNTIF(HCPCS_Cd IS NULL) AS missing_hcpcs,
  COUNTIF(Brnd_Name IS NULL AND Gnrc_Name IS NULL) AS missing_drug_name
FROM `project-3-medicare.medicare_data.raw_data_b`;
