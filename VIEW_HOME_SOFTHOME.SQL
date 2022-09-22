create view `auth_repurchase_all_schema.home_softhome` as
select 
cid, upc, web_prod_id, PARENT_MDSE_DIVN_DESC, Country_code, ENTITY_CODE,GMM_DESC,prc
from
`nithin-gcp-535.history_repurchase.repurchase` where GMM_DESC='HOME' and PARENT_MDSE_DIVN_DESC='SOFTHOME' AND PRC>=100
