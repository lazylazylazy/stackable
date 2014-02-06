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

  def all_companies
  	get('http://localhost:9292/api/companies')
	end

	def get_job(job_id)
		get("http://localhost:9292/api/jobs/#{job_id}")
	end
end

# puts Stackable.new.all_jobs
puts Stackable.new.get_job("46369")
# puts Stackable.new.all_companies