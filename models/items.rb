class Items
  attr_accessor :name

  def initialize(params)
    @name = params[:item]
  end

end
