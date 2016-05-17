class Sale

	attr_reader :sales, :name, :country, :city
	
	def initialize(name,country,city,total_invoiced)
		@name			= name
		@country 	= country
		@city 		= city
		@sales		= total_invoiced
	end
end