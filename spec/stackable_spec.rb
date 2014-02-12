require 'spec_helper'
require 'json'

describe "Stackable" do

	let(:stackable) { Stackable.new }

  it 'should return a list of job profiles' do
  	stub = stub_request(:get, "http://stackable.herokuapp.com/api/jobs").to_return(body: IO.read('./spec/api_jobs.json'))

  	stackable.all_jobs

  	stub.should have_been_requested
  end

  it 'should return a specific job when job_id is given' do
  	stub = stub_request(:get, "http://stackable.herokuapp.com/api/jobs/46369").to_return(body: IO.read('./spec/api_jobs_46369.json'))

  	stackable.get_job("46369")
  	
  	stub.should have_been_requested
  end

  it 'should return a list of jobs that offer relocation' do
  	stub = stub_request(:get, "http://stackable.herokuapp.com/api/relocation").to_return(body: IO.read('./spec/api_relocation.json'))

  	stackable.relocation_offered?

  	stub.should have_been_requested
  end

  it 'should return a list of jobs that allows remote working' do
  	stub = stub_request(:get, "http://stackable.herokuapp.com/api/remote").to_return(body: IO.read('./spec/api_remote.json'))

  	stackable.remote_working?

  	stub.should have_been_requested
  end

  it 'should return a list of jobs that are senior positions' do
  	stub = stub_request(:get, "http://stackable.herokuapp.com/api/senior").to_return(body: IO.read('./spec/api_senior.json'))

  	stackable.senior

  	stub.should have_been_requested
  end

  it 'should return a list of jobs filtered by a given tag' do
  	stub = stub_request(:get, "http://stackable.herokuapp.com/api/jobs/tags/java").to_return(body: IO.read('./spec/api_jobs_tags_java.json'))

  	stackable.get_jobs_by_tags(["java"])

    stub.should have_been_requested
  end

  it 'should return a list of jobs filtered by multiple tags' do
    stub = stub_request(:get, "http://stackable.herokuapp.com/api/jobs/tags/java&ruby").to_return(body: IO.read('./spec/api_jobs_tags_java_ruby.json'))

    stackable.get_jobs_by_tags(["java", "ruby"])

      stub.should have_been_requested

  end

  it 'should return a single company by given name' do
  	stub = stub_request(:get, "http://stackable.herokuapp.com/api/companies/app-business").to_return(body: IO.read('./spec/api_companies_app-business.json'))

  	stackable.get_company("app-business")

  	stub.should have_been_requested
  end

  it 'should return a list of companies filtered by a given tag' do
  	stub = stub_request(:get, "http://stackable.herokuapp.com/api/companies/tags/ruby").to_return(body: IO.read('./spec/api_companies_tags_ruby.json'))

  	stackable.get_companies_by_tags(["ruby"])

  	stub.should have_been_requested
  end

  it 'should return a list of companies filtered by multiple tags' do
    stub = stub_request(:get, "http://stackable.herokuapp.com/api/companies/tags/java&ruby").to_return(body: IO.read('./spec/api_companies_tags_java_ruby.json'))

    stackable.get_companies_by_tags(["java", "ruby"])

    stub.should have_been_requested

  end

  it 'should return a list of companies filtered by keyword (benefits)' do
    stub = stub_request(:get, "http://stackable.herokuapp.com/api/companies/benefits/dental").to_return(body: IO.read('./spec/api_companies_benefit_dental.json'))

    stackable.companies_by_benefits(["dental"])

    stub.should have_been_requested
  end

  it 'should return a list of companies filtered by keywords (benefits)' do
    stub = stub_request(:get, "http://stackable.herokuapp.com/api/companies/benefits/dental&childcare").to_return(body: IO.read('./spec/api_companies_benefits_dental.json'))

    stackable.companies_by_benefits(["dental", "childcare"])

    stub.should have_been_requested
  end

  it 'should return a list of jobs filtered by location' do
    stub = stub_request(:get, "http://stackable.herokuapp.com/api/jobs/location/chicago").to_return(body: IO.read('./spec/api_jobs_location_chicago.json'))

    stackable.jobs_by_location('chicago')

    stub.should have_been_requested
  end



end



