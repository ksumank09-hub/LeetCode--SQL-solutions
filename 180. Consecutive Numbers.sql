with a as(select num,
lead(num,1) over() num1,
lead(num,2) over() num2
from logs)
select distinct num ConsecutiveNums from a where (num=num1) and (num2=num)
;