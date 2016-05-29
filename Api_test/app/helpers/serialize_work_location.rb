require 'top_employee_locations_selector.rb'

	def serialize_work_location(employee_locations)
		p '33333333333333'
	  employee_locations= JSON.parse(employee_locations)
	  locations=[]

	  employee_locations["work_locations"].each do |attributes|
	  	location = Location.new(attributes["latitude"],attributes["longitude"],attributes["description"],attributes["name"])
	   	locations.push(location)
	 	end
		employee_locations_selector(locations)
	end	



