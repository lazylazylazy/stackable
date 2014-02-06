require 'spec_helper'
require 'json'

describe "Stackable" do

	let(:stackable) { Stackable.new }

  it 'should return a list of job profiles' do
  	stub = stub_request(:get, "http://localhost:9292/api/jobs").to_return(body: IO.read('./spec/api_jobs.json'))

  	stackable.all_jobs

  	stub.should have_been_requested
  end

  it 'should return a list of company profiles' do
  	stub = stub_request(:get, "http://localhost:9292/api/companies").to_return(body: IO.read('./spec/api_companies.json'))

  	stackable.all_companies

  	stub.should have_been_requested
  end

  it 'should return a specific job when job_id is given' do
  	stub = stub_request(:get, "http://localhost:9292/api/jobs/46369").to_return(body: IO.read('./spec/api_jobs_46369.json'))

  	stackable.get_job("46369")
  	
  	stub.should have_been_requested
  end
end



