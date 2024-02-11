select person_name from (
select * , sum(weight) over (order by Turn) as total from queue) cumulative_sum
where total <= 1000
order by turn DESC
limit 1