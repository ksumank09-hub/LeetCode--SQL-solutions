select m.name 
from employee e join employee m
where m.id=e.managerid
group by e.managerid
having count(*)>=5;