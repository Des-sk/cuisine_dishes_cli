class API

    
    def self.get_data(selection)
        domain = "https://api.spoonacular.com"
        base_path = "/recipes/complexSearch"
        api_key = ENV['API_KEY']
   
   
        results_size = 10
        response = RestClient.get("#{domain}#{base_path}?apiKey=#{api_key}&cuisine=#{selection}&number=#{results_size}", {
            headers: {"Content-Type" => "application/json"},
        })
        dishes_array = JSON.parse(response)["results"]
        dishes_array .each do |dish|
        Dish.new(dish)
        end
    end
         
end

 

