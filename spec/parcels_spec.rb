require 'rspec'
require 'parcels_logic'
require 'pry'



describe "#Parcel" do
  before(:each) do
    Parcel.clear()
  end

  describe('#save') do
    it("saves a parcel") do
    parcel1 = Parcel.new("parcel1", "12", "12", "12", "15", nil)
    parcel1.save()
    expect(Parcel.all).to(eq([parcel1]))
    end
  end

  describe('.all') do 
    it("returns an empty array when there are no parcels") do 
      expect(Parcel.all).to(eq([]))
    end
  end
  
  describe('.clear') do
   it("clears all parcels") do
      parcel = Parcel.new("parcel1","12", "12", "12", "15", nil)
      parcel.save()
      Parcel.clear()
      expect(Parcel.all).to(eq([]))
   end 
  end

  describe('#==') do
    it("is the same parcel if it has the same attributes as another parcel") do
      parcel1 = Parcel.new("parcel1", "12", "12", "12", "15", nil)
      parcel2 = Parcel.new("parcel1", "12", "12", "12", "15", nil)
      expect(parcel1).to(eq(parcel2))
    end
  end

  describe('.find') do
    it("finds a parcel by id")do
      parcel1 = Parcel.new("parcel1", "12", "12", "12", "15", nil)
      parcel1.save()
      expect(Parcel.find(parcel1.id)).to(eq(parcel1))
    end
  end
  describe("#update") do 
    it("updates an album by id") do 
      parcel = Parcel.new("parcel1", "12", "12", "12", "15", nil)
      parcel.save()
      parcel.update("parcel1", "20", "15", "15", "12")
      expect(parcel.name).to(eq("parcel1", "20", "15", "15", "12"))
    end
  end

end