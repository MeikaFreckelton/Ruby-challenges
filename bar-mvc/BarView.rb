# greeting
# make a selection
# read menu
# wrong answer
# good bye
# order


# view : doesnt have much logic, 
# what you show the user



class BarView

    def greeting
        puts "Hi how can I help you?"
    end

    def selection
        puts "Enter 1. to look at the menu or 2. to order a drink"
        gets.strip.to_i
    end

    def display_menu(items)
        items.each {| item | puts item.capitalize}
    end

    def wrong_answer
        puts "Sorry I don't understand, try again"
    end

    def goodbye(item)
        puts "Here is your #{item}. Thanks for coming, see you later."
    end

    def order
        puts "What would you like?"
        gets.strip.downcase.to_sym
    end





end