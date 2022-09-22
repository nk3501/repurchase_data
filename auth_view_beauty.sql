create view `auth_repurchase_all_schema.beauty` as
select 
cid, upc, web_prod_id, PARENT_MDSE_DIVN_DESC, Country_code, ENTITY_CODE,GMM_DESC,r_qty 
from
`nithin-gcp-535.history_repurchase.repurchase` where GMM_DESC='BEAUTY' AND r_qty>=2
