require "bike.rb"

describe Bike do
  it {is_expected.to respond_to :working?}

  describe "#working?" do
    it "return true" do
      expect(subject).to be_working
    end
  end
end
