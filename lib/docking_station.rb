require_relative 'bike'
class DockingStation
  attr_reader :bikes
  DEFAULT_CAPACITY = 20

  def initialize
    @bikes = []
  end

  def release_bike
    raise "no bikes available" if empty?
    @bikes.pop
  end

  def dock_bike(bike)
    raise "docking station full" if full?
    @bikes << bike
  end

  private

    def full?
      @bikes.length >= DEFAULT_CAPACITY
    end

    def empty?
      @bikes.empty?
    end
end
