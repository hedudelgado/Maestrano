class EmployeeSerializer

	def serialize_work_location(employee_locations)
	  employee_locations= JSON.parse(employee_locations)
	  locations=[]

	  employee_locations["work_locations"].each do |attributes|
	  	location = Location.new(attributes["latitude"],attributes["longitude"],
	  		attributes["description"],attributes["name"])
	   	locations.push(location)
	 	end

	 	employeeselector = EmployeeLocationSelector.new
		employeeselector.employee_locations_selector(locations)
	end	
end