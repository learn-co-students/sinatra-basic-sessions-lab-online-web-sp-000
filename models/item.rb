class Item
    attr_reader :name

    @@all = []

    def initialize(params)
        @name = params[:name]
        @@all << self
    end

    def self.all
        @@all
    end
end