# require "./stackable/version"
require 'json'
require 'httparty'

class Stackable


	def get(url, options = {})
		response = HTTParty.get(url)
		JSON.parse(response.body)
	end	

	def all_jobs
		get('http://localhost:9292/api/jobs')
  end
	
	def get_job(job_id)
		get("http://localhost:9292/api/jobs/#{job_id}")
	end

	def get_jobs_by_tag(tag)
		get("http://localhost:9292/api/jobs/tags/#{tag}")
	end

  def all_companies
  	get('http://localhost:9292/api/companies')
	end

	def get_company(company_id)
		get("http://localhost:9292/api/companies/#{company_id}")
	end

	def get_companies_by_tag(tag)
		get("http://localhost:9292/api/companies/tags/#{tag}")
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




end

# puts Stackable.new.all_jobs
# puts Stackable.new.get_job("46369")
# puts Stackable.new.all_companies