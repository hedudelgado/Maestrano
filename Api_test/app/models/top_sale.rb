class TopSale
	
	attr_reader :sales, :name

	def initialize(name,total_invoiced)
		@name  = name
		@sales = total_invoiced
	end
end