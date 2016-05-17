
def employee_locations_selector(locations)
	city = locations.each_with_object(Hash.new(0)) { |locations, counts| counts[locations.name] += 1 }.max_by{|k,v| v}
	top_office_location_selector(locations, city)
end

def top_office_location_selector(locations, city)
	@top_locations=[]
	locations.each do |office|
		if office.name == city[0] then @top_locations.push(office) end
		if office.name == city[1] then @top_locations.push(office) end
	end
end