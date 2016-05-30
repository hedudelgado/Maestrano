require 'top_sales_location_selector.rb'
require 'serialize_sales_flow_location.rb'

class ApiCalls

	def call_employee_work_locations_api
		auth = {:username=>ENV["USERNAME"], :password=>ENV["PASSWORD"]}
	  employee_locations = HTTParty.get(Settings.employee_work_Location_url , :basic_auth => auth)
	  serializer = EmployeeSerializer.new
	  serializer.serialize_work_location(employee_locations)
	end	

	def call_sales_flow_api
		p 'aaaaaaaaaaaaa'
	auth = {:username=>ENV["USERNAME"], :password=>ENV["PASSWORD"]}
  sales_flow = HTTParty.get(Settings.url_sales_flow, :basic_auth => auth)    
  p 'aaaaaaaaaaaaa'
  p sales_flow
  #p'-----------------'
  serialize_sales_flow_location(sales_flow) 
end

end