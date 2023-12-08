{{ config(materialized='table') }}

select
	J.job_id,
	C.company_name,
	size,
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
	number_of_recruits as numbers,
	web,
	url_company
from job_it.job J inner join job_it.company C
	on J.company_name = C.company_name
order by job_id