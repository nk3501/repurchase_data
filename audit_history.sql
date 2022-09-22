create table `audit_history_repurchase.repurchase`
(
dataset_name string,
table_name string,
last_audit_timestamp timestamp,
total_records int64,
)as
select
'history_repurchase' as dataset_name,
'repurchase' as table_name,
current_timestamp() as last_audit_timestamp,
count(*) from `history_repurchase.repurchase`;