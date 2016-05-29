require_relative'urls_http_requests.rb'
require 'serialize_work_location.rb'

def call_employee_work_locations_api
	p '2222222'
	auth = {:username=>ENV["USERNAME"], :password=>ENV["PASSWORD"]}
  employee_locations = HTTParty.get(employee_work_Location_url , :basic_auth => auth)
  serialize_work_location(employee_locations) 
end	