class SaleLocationSerializer

	def serialize_sales_flow_location(sales_flow)
	  sales_location = []
	 	
	 	sales_flow["content"]["customers"].each do |sales|
	    sales_location.push(SaleLocation.new(sales["name"],sales["country"],sales["city"],sales["total_invoiced"]))
	  end
	top_sales_location_selector(sales_location)
	end
	
	private

	def top_sales_location_selector(locations)
		city 	= locations.each_with_object(Hash.new(0)) { |locations, counts| counts[locations.city] += 1 }.max_by{|k,v| v}
		country = locations.each_with_object(Hash.new(0)) { |locations, counts| counts[locations.country] += 1 }.max_by{|k,v| v}
	 	sales_amount_calculation(locations,country,city)
	end

	def sales_amount_calculation(locations,country,city)
		top_city_invoiced	 = 0
		top_country_invoiced = 0
		locations.each do |location|
	 		if location.city    == city[0] then top_city_invoiced = top_city_invoiced + location.sales end
	 		if location.country == country[0] then top_country_invoiced = top_country_invoiced + location.sales end
	 	end
	 top_sales_builder(city,top_city_invoiced,country,top_country_invoiced )
	end

	def top_sales_builder(city,top_city_invoiced,country,top_country_invoiced )
		top_city 	  = TopSaleLocation.new(city[0],top_city_invoiced)
	 	top_country = TopSaleLocation.new(country[0],top_country_invoiced)
	 	@top_sales  =[top_city,top_country]
	end
end