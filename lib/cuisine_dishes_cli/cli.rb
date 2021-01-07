class CLI

    def start
       puts "Hi, and welcome to the Cuisine Inspo cli!"
       puts "Input Cuisines to see a list of cuisine styles from around de world or exit to leave."
       Cuisine.cuisines_name
       
       menu
    
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
        puts "Input a Cuisine name to se a list of inspirational dishes"
    selection = user_input
       
       API.get_data(selection)
       dishes_list
       menu
    end
 
       
    def dishes_list
        Dish.all.each do |dish|
        puts "#{dish.title}"
        end
    end
    
    
 
    def menu
       selection = user_input


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
 
 