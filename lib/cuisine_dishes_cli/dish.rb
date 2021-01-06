class Dish

    attr_accessor  :cuisine, :title

    @@all = []


    def initialize(dishes_array)
        @cuisine = cuisine
        @title = title
        #  API.dishes_array.each do |k, v|
        #     self.send("#{k}=", v) if self.respond_to?("#{k}=")
        save
        #end
        #save
    end
       

    def save
        @@all << self
    end

    def self.all
        @@all
    end


       
    # end   
    # def add_cuisine(cuisine)
    #     cuisine.dish = self
    # end

    # def dishes_results(dishes_array)
    #     API.dishes_array.each do |k, v|
    #         self.send("#{k}=", v) if self.respond_to?("#{k}=")
    #     end
    # end


    # def initialize(dish_hash)
    #     dish_hash.each do |k, v|
    #         self.send("#{k}=", v) if self.respond_to?("#{k}=")
    #     end
    #     save
       
    # end

    



    

    
end