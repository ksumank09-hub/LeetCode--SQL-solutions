select d.name Department,e.name Employee,e.salary Salary
from employee e join department d on  e.departmentid=d.id
where salary in (select max(e.salary) from employee e where e.departmentid=d.id)

;