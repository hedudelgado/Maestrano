class ApiCalls

	def initialize
		@auth = {:username=>Figaro.env.user_name, :password=>Figaro.env.PASSWORD}
	end

	def call_employee_work_locations_api
	  employee_locations = HTTParty.get(Settings.employee_work_Location_url , :basic_auth => @auth)
	  serializer = EmployeeLocationSerializer.new
	  serializer.serialize_work_location(employee_locations)
	end	

	def call_sales_flow_api
	  sales_flow = HTTParty.get(Settings.url_sales_flow, :basic_auth => @auth)    
	  workserializer = WorkLocationSerializer.new
	  workserializer.serialize_sales_flow_location(sales_flow) 
	end

end