select * from Cinema
where id % 2 != 0 AND Description != 'boring'
order by rating desc