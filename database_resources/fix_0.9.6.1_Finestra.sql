# Fixes to migrate from 0.9.6.1_Finestra to 0.9.6.2_Finestra database version
# (C) Biel Frontera
# run this as: cat fix_0.9.6.1_Finestra.sql | mysql -u root -p


use lemondb;


CREATE OR REPLACE VIEW `v_TransactionsByTax` AS
select
t.date as date,
ti.tax as tax,
sum(ti.total) AS total_sold,
sum(ti.cost) AS total_cost
from (transactions t join transactionitems ti)
where ((t.id = ti.transaction_id) and (t.type = 1) and (t.state=2))
group by t.date, ti.tax;


