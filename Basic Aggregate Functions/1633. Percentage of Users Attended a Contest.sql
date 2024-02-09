select 
 r.contest_id,
 Round((count(distinct r.user_id)/(select count(user_id) from users))*100,2) as percentage
from Register r
group by r.contest_id
order by percentage desc, r.contest_id