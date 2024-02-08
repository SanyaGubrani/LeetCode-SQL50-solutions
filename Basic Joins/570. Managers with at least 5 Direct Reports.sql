select e1.name from employee e1
join employee e2 on e1.id = e2.managerId
group by e1.name, e1.id
having Count(e2.managerId) >= 5;