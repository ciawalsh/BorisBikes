require_relative 'bike_container'

class Garage

	include BikeContainer

	def initialize(options = {})
		self.capacity = options.fetch(:capacity, capacity)
	end

	def accept(van)
		van.broken_bikes.each { |bike| bike.fix! ; dock(bike) }
		van.broken_bikes.clear
	end

end