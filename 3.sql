 select sum(d.salary) as summ_java_developers
  from developers d
	  join developer_skill ds on d.id = ds.developer_id
      join skills s on s.id = ds.skill_id 
  where s.industry  = 'Java';