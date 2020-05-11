require 'rspec'
require 'parcels_logic'

describe "#Parcel" do
  describe('#save') do
    it("saves a parcel") do
    parcel1 = Parcel.new("parcel1", nil)
    parcel1.save()
    expect(Parcel.all).to(eq([parcel1]))
    end
  end

  describe('#==') do
    it("is the same parcel if it has the same attributes as another parcel") do
      parcel1 = Parcel.new("Blue", nil)
      parcel2 = Parcel.new("Blue", nil)
      expect(parcel1).to(eq(parcel2))
    end
  end
 
  

end
  #  describe('.all') do 
  #   expect(Parcel.all).to(eq([]))
  #  end
  # end
