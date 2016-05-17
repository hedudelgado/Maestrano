require_relative'urls_http_requests.rb'
require 'top_employee_locations_selector.rb'

def call_employee_work_locations_api
	auth = {:username=>ENV["USERNAME"], :password=>ENV["PASSWORD"]}
  employee_locations = HTTParty.get(employee_work_Location_url , :basic_auth => auth)
  serialize_work_location(employee_locations) 
end

def serialize_work_location(employee_locations)
  employee_locations= JSON.parse(employee_locations)
  @locations=[]

  employee_locations["work_locations"].each do |attributes|
  	location = Location.new(attributes["latitude"],attributes["longitude"],attributes["description"],attributes["name"])
   	@locations.push(location)
 	end
 	employee_locations_selector(@locations)
end	