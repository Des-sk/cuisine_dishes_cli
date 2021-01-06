class Dish

    attr_accessor  :title

    @@all = []


    # def initialize(cuisine, title)
    #     @cuisine = cuisine
    #      @title = dishes_array
    #      dishes_array.each do |k, v|
    #         self.send("#{k}=", v) if self.respond_to?("#{k}=")
    #     end
    #     save
    # end
       

    def save
        @@all << self
    end

    def self.all
        @@all
    end


    def initialize(dish_hash)
        dish_hash.each do |k, v|
            self.send("#{k}=", v) if self.respond_to?("#{k}=")
        end
        save
       
    end

    # def self.new_dishes_collection(cuisine)
    #     dishes_array = []
    #     dishes_array.each do |dish|
    #         dishes_array << dish.title
    #     end 
    #     dishes_array 
       
    # end   



    

    
end