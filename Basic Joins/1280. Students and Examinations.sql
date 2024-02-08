select
  stu.student_id,
  stu.student_name,
  s.subject_name,
  count(e.subject_name) as 'attended_exams'
from students stu
  join subjects s
  left join examinations e on stu.student_id = e.student_id AND s.subject_name = e.subject_name
group by
  stu.student_id,
  s.subject_name
order by stu.student_id