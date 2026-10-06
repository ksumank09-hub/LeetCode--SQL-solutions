with a as(select d.name department ,e.name employee,salary,dense_rank() over(partition by d.name order by e.salary desc) ranking
from employee e join department d on e.departmentid=d.id)
select department,employee,salary  from a 

where ranking<=3
;