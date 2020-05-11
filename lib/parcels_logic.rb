class Parcel
  attr_accessor :name
  # , :width, :length, :height, :weight
  attr_reader :name, :id
  
  @@parcels = {}
  @@total_rows = 0
  
  def initialize(name, id)
    @name = name
    # @width = width.to_i
    # @length = length.to_i
    # @height = height.to_i
    # @weight = weight.to_i
    @@id = id || @@total_rows += 1
  end
  
  def self.all 
    @@parcels.values()
  end 

  def save
    @@parcels[self.id] = Parcel.new(self.name, self.id)
  end

  def ==(parcel_to_compare)
    self.name() == parcel_to_compare.name()
  end



end 

