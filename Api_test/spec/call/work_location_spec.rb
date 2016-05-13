require 'rails_helper'

RSpec.describe "/employee_locations.json", type: :request do 
	describe 'GET /employee_locations.json' do 
		it 'do a request to an external API' do 
		body ={ "work_locations": [{"name":"Sydney office","description":"Sydney office, AU operations","latitude":-33.87,"longitude":151.2}]}
    	stub_request(:get, "https://api-connec-uat.maestrano.io/api/v2/org-fc3l/work_locations").to_return(:status => 200, :body => body.to_json)
			call_employee_work_locations_api
		end
	end
end
