select avg(d.salary::numeric(10,2)) as avarege_salary
from developers d
join projects proj on proj.id = d.project_id
where proj."cost" = (select min(p."cost") as cheap_project from projects p);