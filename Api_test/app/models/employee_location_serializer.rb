class EmployeeLocationSerializer

	def serialize_work_location(employee_locations)
	  employee_locations= JSON.parse(employee_locations)
	  locations=[]

	  employee_locations["work_locations"].each do |attributes|
	  	location = EmployeeLocation.new(attributes["latitude"],attributes["longitude"],
	  		attributes["description"],attributes["name"])
	   	locations.push(location)
	 	end
	employee_locations_selector(locations)
	end	

	private

	def top_office_location_selector(locations, city)
		top_locations=[]
		locations.each do |office|
			if office.name == city[0] then top_locations.push(office) end
			if office.name == city[1] then top_locations.push(office) end
		end
		top_locations
	end

	def employee_locations_selector(locations)
		city = locations.each_with_object(Hash.new(0)) { |locations, counts| counts[locations.name] += 1 }.max_by{|k,v| v}
		top_office_location_selector(locations, city)
	end
end