require 'rspec'
require 'parcels_logic'

describe "#Parcels" do
  describe('#weight')
   it("allows user to enter a weight") do
    parcel = Parcel.new("12")
    expect(parcel.weight?()).to(eq(12))
   end
end
