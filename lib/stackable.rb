# require "./stackable/version"
require 'json'
require 'httparty'

class Stackable


	def get(url)
		response = HTTParty.get(url)
		JSON.parse(response.body)
	end	

	def all_jobs
		get('http://localhost:9292/api/jobs')
  end
	
	def get_job(job_id)
		get("http://localhost:9292/api/jobs/#{job_id}")
	end

	def get_jobs_by_tags(tags=[])
		params = tags.join('&')
		get("http://localhost:9292/api/jobs/tags/#{params}")
	end

  def all_companies
  	get('http://localhost:9292/api/companies')
	end

	def get_company(company_id)
		get("http://localhost:9292/api/companies/#{company_id}")
	end

	def get_companies_by_tags(tags=[])
		params = tags.join('&')
		get("http://localhost:9292/api/companies/tags/#{params}")
	end

	def relocation_offered?
		get("http://localhost:9292/api/relocation")	
	end	

	def remote_working?
		get("http://localhost:9292/api/remote")
	end

	def senior
		get("http://localhost:9292/api/senior")
	end

	def companies_by_benefits
 	end


end
