require 'rspec'
require 'parcels_logic'
require 'pry'



describe "#Parcel" do
  # before(:each) do
  #   Parcel.clear()
  # end

  describe('#save') do
    it("saves a parcel") do
    parcel1 = Parcel.new("parcel1", "12", "12", "12", "15", nil)
    parcel1.save()
    expect(Parcel.all).to(eq([parcel1]))
    end
  end

  describe('#==') do
    it("is the same parcel if it has the same attributes as another parcel") do
      parcel1 = Parcel.new("parcel1", "12", "12", "12", "15", nil)
      parcel2 = Parcel.new("parcel1", "12", "12", "12", "15", nil)
      expect(parcel1).to(eq(parcel2))
    end
  end
  describe('.all') do 
    it("returns an empty array when there are no parcels") do 
      expect(Parcel.all).to(eq([]))
   end
  end
end