select
    p1.product_id,
    CASE
        when min(p1.change_date) > "2019-08-16" then 10
        else (
            select new_price from Products p2
            where p2.product_id = p1.product_id
            and p2.change_date <= "2019-08-16"
            order by change_date desc
            limit 1
        )
    END as price
from Products p1
group by p1.product_id

/*
Any price change after "2019-08-16" is ignored, and the price is considered to be 10, which is the default price.
For price changes before or on "2019-08-16," the most recent price change on or before that date is considered the product's price.
*/
