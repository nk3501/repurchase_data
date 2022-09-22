CREATE TABLE
  `stage_repurchase.repurchase` ( cid string,
    upc string,
    oid string not null,
    dt string,
    r_dt string,
    prc string,
    qty string,
    amt string,
    r_qty string,
    r_amt string,
    web_prod_id string,
    GMM_DESC string,
    PARENT_MDSE_DIVN_DESC string
     )