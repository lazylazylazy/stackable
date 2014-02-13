# Stackable

Stackable is a an Ruby API wrapper for the <a href="https://github.com/Ericat/stackoverflow-career-api">unofficial SO jobs API</a>. 

Inspired by this<a href="http://meta.stackoverflow.com/questions/158005/stackoverflow-careers-api">post</a>.

## Installation

Add this line to your application's Gemfile:

    gem "stackable", "~> 0.0.1"

And then execute:

    $ bundle

Or install it yourself via rubygems:

    $ gem install stackable

## Example output

<a href="http://stackable.herokuapp.com/api/jobs"></a>

Too hard to digest? download a JSON viewer extension to make it a little prettier :) 

## Usage

```ruby

require 'stackable'

Stackable.new.all_jobs
#Retrieves all jobs as an array of hashes

Stackable.new.get_job(job_id)
#Retrieves by job id. Job_id is the unique identifier exposed in the url of the job description on SO jobs.

Stackable.new.get_jobs_by_tags(tags=[])
#Retrives jobs by tech stack e.g. ruby, java, HTML

Stackable.new.get_all_companies
#Retrieves all companies

Stackable.new.get_companies(company_id)
#Retrieves by company_id. company_id is exposed in the url of the company profile pages. 

Stackable.new.get_companies_by_tags(tags=[])
#Retrives companies by tech stack e.g. ruby, java, HTML

Stackable.new.relocation_offered?
#Retrives jobs where relocation is offered

Stackable.new.remote_working?
#Retrives jobs where remote working is offered

Stackable.new.senior
#Retrives jobs where job title contains Senior

Stackable.new.companies_by_benefits(benefits=[])
#Retrives companies which match benefit parameters e.g. childcare, gym

Stackable.new.jobs_by_location(location)
#Retrives jobs which match the location passed e.g. london

```

## Known Bugs
<ul>
  <li>?????</li>
</ul>

## Contributing

1. Fork it ( http://github.com/<my-github-username>/stackable/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## Desired Features
<ul>
  <li>Request location by City / State / Country. Currently limited by string match.</li>
</ul>

## Contributors
<ul>
  <li><a href="https://github.com/Ericat">Erica Salvaneschi</a></li>
  <li><a href="https://github.com/mfisher90">Michael Fisher</a></li>
  <li><a href="https://github.com/koomerang">Kumaran Veluppillai</a></li>
</ul>

## License

Stackable is released under the <a href="https://github.com/mfisher90/stackable/blob/master/LICENSE.txt">MIT License</a>.

Written as a Final Project for <a href="http://www.makersacademy.com/">Makers Academy</a>. 
