create view `auth_repurchase_all_schema.view_repurchase_with` as
select 
cid, upc, web_prod_id, PARENT_MDSE_DIVN_DESC, Country_code, ENTITY_CODE

from

`nithin-gcp-535.history_repurchase.repurchase` 
