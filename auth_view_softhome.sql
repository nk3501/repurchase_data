create view `auth_repurchase_all_schema.softhome` as
select 
cid, upc, web_prod_id, PARENT_MDSE_DIVN_DESC, Country_code, ENTITY_CODE,r_qty
from
`nithin-gcp-535.history_repurchase.repurchase` where  PARENT_MDSE_DIVN_DESC='SOFT HOME' AND r_qty>5
