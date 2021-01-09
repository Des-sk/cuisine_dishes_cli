class API

    


    # def self.get_data
    #     response = RestClient.get("https://api.spoonacular.com/recipes/complexSearch?")
    #     api_key = "ebd49d55da6c4a0f9e6a5098a077595b"
    #     dishes_array = JSON.parse(response)
    #     binding.pry
    # end

    def self.get_data(selection)
    domain = "https://api.spoonacular.com"
    base_path = "/recipes/complexSearch"
    api_key = ENV['API_KEY']
    binding.pry
   
    results_size = 10
    response = RestClient.get("#{domain}#{base_path}?apiKey=#{api_key}&cuisine=#{selection}&number=#{results_size}", {
            headers: {"Content-Type" => "application/json"},
        })
        dishes_array = JSON.parse(response)["results"]
        #binding.pry
        dishes_array .each do |dish|
            # dish.each do |k, v|
            #     self.send("#{k}=", v) if self.respond_to?("#{k}=")
                Dish.new(dish)
                end
            #end
            #binding.pry
    end
    
        #Dish.new(cuisine, title)

        #def initialize(dish_hash)
            #     dish_hash.each do |k, v|
            #         self.send("#{k}=", v) if self.respond_to?("#{k}=")
            #     end
            #     save
            
        #end
    

        
    

    # def get_dishes
    #     if response["status"] == 'failure'
    #         puts response["message"]
    #     else
    #         dishes = response["results"]     
    #     end       
    # end
end

 

