require './lib/garage'

describe Garage do 

	let(:bike) { Bike.new }
	let(:garage){Garage.new(:capacity => 250)}

	it "should allow setting default capacity on initialising" do
		expect(garage.capacity).to eq(250)
	end

	it "should fix & accept a bike" do
		bike.break!
		bike.fix!
		expect(bike).not_to be_broken
		expect(garage.bike_count).to eq(0)
		garage.dock(bike)
		expect(garage.bike_count).to eq(1)
	end

end