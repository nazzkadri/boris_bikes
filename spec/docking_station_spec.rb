require 'docking_station.rb'

describe DockingStation do
  it {is_expected.to respond_to :release_bike}
  it {is_expected.to respond_to(:dock_bike).with(1).argument}
  it {is_expected.to respond_to :bikes}
  describe '#release_bike' do

    it 'raises an error when there are no bikes in the docking station' do
      expect{subject.release_bike}.to raise_error("no bikes available")
    end

    it "releases a bike" do
      bike = Bike.new
      subject.dock_bike(bike)
      expect(subject.release_bike).to eq(bike)
    end

    it "release a bike that works" do
      bike = Bike.new
      expect(bike).to be_working
    end
  end

  describe "#dock_bike" do
    it "docks a bike" do
      bike = Bike.new
      expect(subject.dock_bike(bike)).to eq(subject.bikes)
    end
    it "raise an error when trying to dock bike on a station which is full" do
      20.times{subject.dock_bike(Bike.new)}
      expect{subject.dock_bike(Bike.new)}.to raise_error("docking station full")
    end
  end

end
