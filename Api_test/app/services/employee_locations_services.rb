require_relative'urls_http_requests.rb'
include SerializeWorkLocation

def call_employee_work_locations_api
	auth = {:username=>ENV["USERNAME"], :password=>ENV["PASSWORD"]}
  employee_locations = HTTParty.get(employee_work_Location_url , :basic_auth => auth)
  serialize_work_location(employee_locations) 
end	