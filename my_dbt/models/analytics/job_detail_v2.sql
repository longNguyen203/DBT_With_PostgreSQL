{{ config(materialized='table') }}

select
	job_id,
	case
		when salary_min = 'NaN' then 0
		else salary_min
	end as lowers,
	case
		when salary_max = 'NaN' then 0
		else salary_max
	end as uppers,
	case
		when currency_unit = 'NaN' then 'Undefined'
		else currency_unit
	end as unit,
	time_deadline as times,
	experience as exps,
	number_of_recruits as numbers
from job_it.job order by job_id