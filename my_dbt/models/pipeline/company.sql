{{ config(materialized='table') }}

select
	company_id,
	UPPER(company_name) as company_name,
	size,
	web,
	url_company
from job_it.company_info order by company_id