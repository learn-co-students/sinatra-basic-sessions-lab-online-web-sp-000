class Item

    attr_accessor :Item

    @@all=[]

    def initialize (params)
        @item = params[:item]
        @@all<<self
    end

    def self.all
        @@all
    end

end