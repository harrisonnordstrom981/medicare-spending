-- 01_raw_exploration.sql
-- Purpose: Basic exploration + sanity checks for Part B
SELECT COUNT(*) AS n_rows
FROM `project-3-medicare.medicare_data.raw_data_b`;

-- Quick peek
SELECT *
FROM `project-3-medicare.medicare_data.raw_data_b`
LIMIT 20;

-- Check for duplicates by HCPCS code (should usually be unique)
SELECT
  HCPCS_Cd,
  COUNT(*) AS n
FROM `project-3-medicare.medicare_data.raw_data_b`
GROUP BY HCPCS_Cd
HAVING COUNT(*) > 1
ORDER BY n DESC;


SELECT
  COUNTIF(HCPCS_Cd IS NULL) AS null_hcpcs_cd,
  COUNTIF(HCPCS_Desc IS NULL) AS null_hcpcs_desc
FROM `project-3-medicare.medicare_data.raw_data_b`;
