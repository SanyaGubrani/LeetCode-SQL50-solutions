select
  p.product_id,
  coalesce(round(sum(p.price * u.units) / sum(u.units), 2), 0) as average_price
from Prices p

left join UnitsSold u 
on p.product_id = u.product_id 
and u.purchase_date BETWEEN p.Start_date and p.end_date

group by p.product_id

