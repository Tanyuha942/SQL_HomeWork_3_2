 select p.project_name, sum(d.salary) as sum_project
  from developers d
	join developer_project dp on dp.developer_id = d.id
	join projects p on p.id = dp.project_id
 group by p.project_name, p.id
 order by 2 desc limit 1;