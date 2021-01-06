class Cuisine
   
    #@@cuisines_name = ["african", "american", "british", "cajun", "caribbean", "chinese", "eastern european", "european", "french", "german", "greek", "indian", "irish", "italian", "japanese", "jewish", "korean", "latin american", "mediterranean", "mexican", "middle eastern", "nordic", "southern", "spanish", "thai", "vietnamese"]

      attr_accessor :name

      @@all = []

      def initialize (name)
        @name = name
        #@title = title
        save
      end

      def save
        @@all << self
    end

    def self.all
        @@all
    end

    def add_dish(dish)
        dish.cusine = self
    end

    def dishes
        Dish.all.select {|dish| dish.cuisine == self}
    end


 

    
end






