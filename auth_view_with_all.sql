create view `auth_repurchase_all_schema.view_repurchase` as
select
cid, upc, oid, dt, r_dt, prc, qty, amt, r_qty, r_amt, web_prod_id, GMM_DESC, PARENT_MDSE_DIVN_DESC, Last_Modifies_Time, Country_code, ENTITY_CODE
  FROM 
`nithin-gcp-535.history_repurchase.repurchase` 