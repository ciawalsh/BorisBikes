require './lib/garage'

describe Garage do 

	let(:bike){ Bike.new }
	let(:garage){ Garage.new(:capacity => 250) }
	let(:van){ Van.new(:capacity => 10) }
	let(:station){ DockingStation.new(:capacity => 10) }
    
	it "should allow setting default capacity on initialising" do
		expect(garage.capacity).to eq(250)
	end

	it "should accept broken bikes from a van" do
		bike.break!
		station.dock(bike)
		van.collect_from_station(station)
		garage.accept(van)
		expect(garage.bike_count).to eq(1)
	end

	it "should fix bikes" do
		expect(bike).not_to be_broken
	end
end