require 'urls_http_requests.rb'
class ApiCalls

	def call_employee_work_locations_api
		auth = {:username=>ENV["USERNAME"], :password=>ENV["PASSWORD"]}
	  employee_locations = HTTParty.get(employee_work_Location_url , :basic_auth => auth)
	  serializer = EmployeeSerializer.new
	  serializer.serialize_work_location(employee_locations)
	end	

end