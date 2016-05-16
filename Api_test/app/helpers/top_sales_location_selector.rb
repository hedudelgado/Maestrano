require 'top_sale.rb'

def top_sales_location_selector(locations)
	city 		= locations.each_with_object(Hash.new(0)) { |locations, counts| counts[locations.city] += 1 }
	country = locations.each_with_object(Hash.new(0)) { |locations, counts| counts[locations.country] += 1 }
	top_city 		=	city.max_by{|k,v| v}
 	top_country	= country.max_by{|k,v| v}
 	sales_amount_calculation(locations,top_country,top_city)
end

def sales_amount_calculation(locations,top_country,top_city)
	top_city_invoiced		 = 0
	top_country_invoiced = 0
	
	locations.each do |location|
 		if location.city == top_city[0] then top_city_invoiced = top_city_invoiced + location.sales end
 		if location.country == top_country[0] then top_country_invoiced = top_country_invoiced + location.sales end
 	end
 	p top_city 			= Top_sale.new(top_city[0],top_city_invoiced)
 	p top_country 	= Top_sale.new(top_country[0],top_country_invoiced)
 	@sales_location =[top_city,top_country]
 	p @sales_location
end


