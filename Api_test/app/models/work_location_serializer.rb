class WorkLocationSerializer

	def serialize_sales_flow_location(sales_flow)
	  p 'bbbbbbbbb'
	  sales_location = []
	 	
	 	sales_flow["content"]["customers"].each do |sales|
	 		p sales
	    sales_location.push(Sale.new(sales["name"],sales["country"],sales["city"],sales["total_invoiced"]))
	  end
		
		locationselector = SalesLocationSelector.new
	  locationselector.top_sales_location_selector(sales_location)
	end
end