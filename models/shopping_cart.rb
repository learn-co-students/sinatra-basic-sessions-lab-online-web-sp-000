class ShoppingCart

  attr_accessor :item

  @@all = []

  def initialize(params)
    @item = params[:item]
    @@all << self
  end

  def self.all
    @@all
  end


end
