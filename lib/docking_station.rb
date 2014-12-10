require_relative 'bike_container'

class DockingStation

	include BikeContainer

	def initialize(options = {})
		self.capacity = options.fetch(:capacity, capacity)
	end

	def accept_from_van(van, bike)
		if bike.broken?
			raise "Bike is broken cannot accept"
		else
			van.release(bike)
			dock(bike)		
		end
	end

end

