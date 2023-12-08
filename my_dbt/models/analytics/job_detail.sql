select 
	job_id,
	company_id,
	upper(job_title) as job_title,
	salary_range,
	salary_min,
	salary_max
from job_it.job order by job_id

-- Create table model with cau select ben tren