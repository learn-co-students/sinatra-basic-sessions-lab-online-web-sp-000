class Item
  attr_reader :name

  @@items = []

  def initialize(args)
    @name = args[:name]
    @@items << self
  end

  def self.all
    @@items
  end

  def self.clear
    @@items = []
  end

end
