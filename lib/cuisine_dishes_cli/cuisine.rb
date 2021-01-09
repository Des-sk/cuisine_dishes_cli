class Cuisine
   

      attr_accessor :name

      @@all = []

      def initialize (name)
        @name = name
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

    def self.cuisines_name
        cuisines_name = ["african", "american", "british", "cajun", "caribbean", "chinese", "eastern european", "european", "french", "german", "greek", "indian", "irish", "italian", "japanese", "jewish", "korean", "latin american", "mediterranean", "mexican", "middle eastern", "nordic", "southern", "spanish", "thai", "vietnamese"]
        cuisines_name .each do |cuisine|
            self.new(cuisine)
        end
    end

end






