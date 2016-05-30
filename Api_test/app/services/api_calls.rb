class ApiCalls

	def call_employee_work_locations_api
		auth = {:username=>ENV["USERNAME"], :password=>ENV["PASSWORD"]}
	  employee_locations = HTTParty.get(Settings.employee_work_Location_url , :basic_auth => auth)
	  serializer = EmployeeSerializer.new
	  serializer.serialize_work_location(employee_locations)
	end	

	def call_sales_flow_api
		auth = {:username=>ENV["USERNAME"], :password=>ENV["PASSWORD"]}
	  sales_flow = HTTParty.get(Settings.url_sales_flow, :basic_auth => auth)    
	  p 'aaaaaaaaaaaaa'
	  p sales_flow
	  workserializer = WorkLocationSerializer.new
	  workserializer.serialize_sales_flow_location(sales_flow) 
	end

end