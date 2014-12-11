require_relative 'bike_container'

class Van

	include BikeContainer

	def initialize(options = {})
		self.capacity = options.fetch(:capacity, capacity)
	end

	def check_station(station)
		station.unavailable_bikes.each do |bike| 
			broken_bikes << bike 
		end
	end

	def check_station_amount(station)
		station.unavailable_bikes.length
	end

	def accept_from_station(station, bike)
		check_station(station)
		broken_bikes.push do | bike |
			station.release(bike) 
			dock(bike)
		end
		station.unavailable_bikes.each { |bike| station.release(bike) }
	end

end


