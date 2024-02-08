select a.machine_id,
round(avg(case WHEN a.activity_type = 'end' THEN a.timestamp else -a.timestamp END)*2, 3) AS processing_time
from Activity a
group by machine_id