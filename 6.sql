select avg(d.salary::numeric(10,2)) as avarege_salary
from developers d
join developer_project dp on dp.developer_id = d.id
join projects proj on proj.id = dp.project_id 
where proj."cost" = (select min(p."cost") as cheap_project from projects p);