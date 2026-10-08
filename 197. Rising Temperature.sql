select t.Id
from weather y  join weather t 
where t.recorddate=date_add(y.recorddate,interval 1 day) and t.temperature>y.temperature

;