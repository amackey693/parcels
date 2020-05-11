class Parcel
  attr_accessor :name, :width, :length, :height, :weight
  attr_reader :name, :id
  
  @@parcels = {}
  @@total_rows = 0
  
  def initialize(name, width, length, height, weidght, id)
    @name = name
    @width = width.to_i
    @length = length.to_i
    @height = height.to_i
    @weight = weight.to_i
    @@id = id || @@total_rows += 1
  end
  
  def self.all 
    @@parcels.values()
  end 

  def save
    @@parcels[self.id] = Parcel.new(self.name, self.width, self.length, self.height, self.weight, self.id)
  end

  def ==(parcel_to_compare)
    self.name() == parcel_to_compare.name()
  end
  
  def self.clear
    @@parcels = {}
    @@total_rows = 0
  end

  def self.find(id)
    @@parcels[id]
  end
  
  def update(name, width, height, length, weight)
    self.name = name
    self.width = width.to_i
    self.height = height.to_i
    self.length = length.to_i
    self.weight = weight.to_i
    @@parcels[self.id] = Parcel.new(self.name, self.width, self.height, self.length,self.weight, self.id) 
  end 
end


