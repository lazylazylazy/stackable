# require "./stackable/version"
require 'json'
require 'httparty'

class Stackable


	def get(url)
		response = HTTParty.get(url)
		JSON.parse(response.body)
	end	

	def all_jobs
		get('http://staging-so-jobs-api.herokuapp.com/api/jobs')
  end
	
	def get_job(job_id)
		get("http://staging-so-jobs-api.herokuapp.com/api/jobs/#{job_id}")
	end

	def get_jobs_by_tags(tags=[])
		params = tags.join('&')
		get("http://staging-so-jobs-api.herokuapp.com//api/jobs/tags/#{params}")
	end

  def all_companies
  	get('http://staging-so-jobs-api.herokuapp.com/api/companies')
	end

	def get_company(company_id)
		get("http://staging-so-jobs-api.herokuapp.com/api/companies/#{company_id}")
	end

	def get_companies_by_tags(tags=[])
		params = tags.join('&')
		get("http://staging-so-jobs-api.herokuapp.com/api/companies/tags/#{params}")
	end

	def relocation_offered?
		get("http://staging-so-jobs-api.herokuapp.com/api/relocation")	
	end	

	def remote_working?
		get("http://staging-so-jobs-api.herokuapp.com/api/remote")
	end

	def senior
		get("http://staging-so-jobs-api.herokuapp.com/api/senior")
	end

	def companies_by_benefits(benefits=[])
		params = benefits.join('&')
		get("http://staging-so-jobs-api.herokuapp.com/api/companies/benefits/#{params}")
 	end


end
