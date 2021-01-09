class Dish

    attr_accessor  :title

    @@all = []

    
    def initialize(dish)
        @title = dish["title"]
        save   
    end
       

    def save
        @@all << self
    end

    def self.all
        @@all
    end
    
end