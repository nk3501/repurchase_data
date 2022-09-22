CREATE TABLE
  `history_repurchase.repurchase` ( 
    cid int64 OPTIONS(description='customer_id'),
    upc bignumeric OPTIONS(description='user per count'),
    oid bignumeric not null OPTIONS(description='ORDER id'),
    dt date OPTIONS(description='item purchase date'),
    r_dt date OPTIONS(description='item received date'),
    prc float64 OPTIONS(description='price OF the item'),
    qty int64 OPTIONS(description='quntity'),
    amt float64 OPTIONS(description='amount paid BY customer'),
    r_qty int64 OPTIONS(description='received quntity'),
    r_amt float64 OPTIONS(description='received amount'),
    web_prod_id int64 OPTIONS(description='web product id'),
    GMM_DESC string OPTIONS(description='general discription OF item'),
    PARENT_MDSE_DIVN_DESC string OPTIONS(description='item type'),
    Last_Modifies_Time timestamp not null OPTIONS(description='LAST updated timestamp'),
    Country_code string OPTIONS(description='country code'),
    ENTITY_CODE string OPTIONS(description='entity code') 
    )