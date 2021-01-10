class CLI

    def start
      puts " "
      puts " "
      puts "Hi, and welcome to the Cuisine Inspo cli!"
      puts " "
      puts " "
      puts "Input Cuisines to see a list of cuisine styles from around de world or exit to leave."
      puts " "
      Cuisine.cuisines_name
      puts " "
      menu
    end
     
 
    def user_input
       gets.strip
    end
 
    def cuisines_list
      puts " "
       Cuisine.all.each.with_index(1)do |cuisine, i|
       puts "#{i}.#{cuisine.name}  "
       end
       select_cuisine 
    end
 
    def goodbye
      puts " "
      puts " "
      puts "Get Cooking!!!"
      puts " "
      puts " "
    end
 
    def error
       puts "Cuisine not supported! See the list of supported Cuisines again:"
        cuisines_list
    end
 
 
    def select_cuisine
        puts " "
        puts " "
        puts "Input a Cuisine name to se a list of inspirational dishes" 
        puts " "
         get_dishes
    end

    
    def get_dishes
      Dish.all.clear
      selection = user_input
      puts " "
       API.get_data(selection)
       dishes_list
    end
 
       
    def dishes_list
      if Dish.all.length != 0 
        Dish.all.each do |dish|
         puts "#{dish.title}"
        end
         puts " "
         puts " "
         puts "Would you like to see dishes from another Cuisine? Enter Cuisines if you do or exit if you're done" 
         puts " "
         menu
      else 
         puts " "
         error
         #get_dishes
      end 
    end
   
 
    def menu
      selection = user_input
      if selection == "Cuisines"
         cuisines_list
      elsif selection == "exit"
         goodbye
      else
         error
      end
   end

   
      

end
 
 