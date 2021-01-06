class CLI

    def start
       puts "Hi, and welcome to the Cuisine Inspo cli!"
       puts "Input Cuisines to see a list of cuisine styles from around de world or exit to leave."
       API.get_data
       #binding.pry
       menu
     #binding.pry
    end
 
    def user_input
       gets.strip
    end
 
    def cuisines_list
       Cuisine.all.each.with_index(1)do |cuisine, i|
       puts "#{i}. #{cuisine.name}"
       end
       select_cuisine 
    end
 
    def goodbye
       puts "Get Coocking!!!"
    end
 
    def error
       puts "Try Again"
    end
 
 
    def select_cuisine
       puts "Select a cuisine style to see some inspirational dishes."
       menu
    end  
       
    
    def dishes_list
       Dish.all.each.with_index(1)do |title, i|
       puts "#{i}. #{dish.title}" 
    end  
    end 
   
 
    def menu
       selection = user_input 
 
    #    if selection == Cuisine.all
       
    #       dishes_list
    #    end
 
       if selection == "Cuisines"
          cuisines_list
          menu
 
       elsif selection == "exit"
          goodbye
 
       else
          error
          menu
       end
      
    end
end
 
 