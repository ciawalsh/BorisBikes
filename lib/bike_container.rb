module BikeContainer
	
	DEFAULT_CAPACITY = 10

	def bikes
		@bikes ||= []
	end

	def capacity
		@capacity ||= DEFAULT_CAPACITY
	end

	def capacity=(value)
		@capacity = value
	end

	def bike_count
		bikes.count
	end

	def dock(bike)
		raise "There is no more room for bikes" if full?
		bikes << bike
	end

	def release(bike)
		if bike_count > 0
			bikes.delete(bike)
		else
			raise "There are no more bikes" 
		end
	end

	def full?
		bike_count == capacity
	end

	def available_bikes
		bikes.reject { |bike| bike.broken? }
	end

end