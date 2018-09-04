require 'docking_station.rb'

describe DockingStation do
#it {is_expected.to respond_to :release_bike}
  describe 'release_bike' do
  it "Docking station to release the bike" do
    docking_station = DockingStation.new
    expect(docking_station).to respond_to :release_bike
  end
end
end
