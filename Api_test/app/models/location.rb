class Location

	attr_reader :name, :description, :longitude, :latitude
	
	def initialize(latitude,longitude,description,name)
		@latitude 		= latitude
		@longitude 		= longitude
		@description	= description
		@name			= name
	end

end