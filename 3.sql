select sum(d.salary) as summ_java_developers
from developers d
join skills s on d.id  = s.developer_id 
where s.industry_id = 1;