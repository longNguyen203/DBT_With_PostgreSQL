select 
	company_id,
	upper(company_name) as company_name,
	size,
    url_company
from job_it.company_info order by company_id
-- cau select nay tao ra 1 view trong postgresql bang cau select tren