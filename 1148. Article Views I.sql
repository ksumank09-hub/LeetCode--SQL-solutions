select  distinct author_id id
from views
where (author_id=viewer_id)>=1
order by id asc;