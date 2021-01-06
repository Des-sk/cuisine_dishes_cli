class API

    


    # def self.get_data
    #     response = RestClient.get("https://api.spoonacular.com/recipes/complexSearch?")
    #     api_key = "ebd49d55da6c4a0f9e6a5098a077595b"
    #     dishes_array = JSON.parse(response)
    #     binding.pry
    # end

    def self.get_data
    domain = "https://api.spoonacular.com"
    base_path = "/recipes/complexSearch"
    api_key = "ebd49d55da6c4a0f9e6a5098a077595b"
    results_size = 10
    response = RestClient.get("#{domain}#{base_path}?apiKey=#{api_key}&cuisines_name=#{cuisines_name}&number=#{results_size}", {
            headers: {"Content-Type" => "application/json"},
        })
        dishes_array = JSON.parse(response)["results"]
        dishes_array .each do |dish|
            dish.each do |k, v|
                self.send("#{k}=", v) if self.respond_to?("#{k}=")
                Dish.new(dishes_array)
                end
            end
            binding.pry
    end
    
        #Dish.new(cuisine, title)

        #def initialize(dish_hash)
            #     dish_hash.each do |k, v|
            #         self.send("#{k}=", v) if self.respond_to?("#{k}=")
            #     end
            #     save
            
        #end
    

        
    def self.cuisines_name
        cuisines_name = ["african", "american", "british", "cajun", "caribbean", "chinese", "eastern european", "european", "french", "german", "greek", "indian", "irish", "italian", "japanese", "jewish", "korean", "latin american", "mediterranean", "mexican", "middle eastern", "nordic", "southern", "spanish", "thai", "vietnamese"]
        cuisines_name .each do |cuisine|
            Cuisine.new(cuisine)
        end
    end

    # def get_dishes
    #     if response["status"] == 'failure'
    #         puts response["message"]
    #     else
    #         dishes = response["results"]     
    #     end       
    # end
end

 

