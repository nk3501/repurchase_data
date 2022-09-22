INSERT INTO
  `history_repurchase.repurchase`
SELECT
  SAFE_CAST(REGEXP_REPLACE(cid, r',','') AS int64),
  SAFE_CAST(REGEXP_REPLACE(upc, r',','') AS bignumeric),
  ifnull(SAFE_CAST(REGEXP_REPLACE(oid, r',','') AS bignumeric ),0),
  PARSE_DATE("%m/%d/%Y", dt),
  PARSE_DATE("%m/%d/%Y", r_dt ),
  SAFE_CAST(prc AS float64),
  SAFE_CAST(qty AS int64 ),
  SAFE_CAST(amt AS float64),
  SAFE_CAST(r_qty AS int64),
  SAFE_CAST(r_amt AS float64),
  SAFE_CAST(REGEXP_REPLACE(web_prod_id, r',','') AS int64),
  GMM_DESC,
  PARENT_MDSE_DIVN_DESC,
  CURRENT_TIMESTAMP() AS Last_Modifies_Time,
  "ind" AS Country_code,
  "TS" AS ENTITY_CODE
FROM
  `stage_repurchase.repurchase`