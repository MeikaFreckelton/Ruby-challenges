

#  class that controls the financial aspects
class Funds

    # starting budget of 0
    def initialize 
        @budget = 0
    end

    def view_budget
        puts "Your budget is currently: $#{@budget}"
    end

    def add_to_budget
        puts "How much would you like to add?"
        add_input = gets.strip.to_f
        @budget += add_input
        puts "Your new budget is: #{@budget}"
    end

    def remove_from_budget
        puts "How much would you like to remove?"
        remove_input = gets.strip.to_f
        @budget -= 1
        puts "Your new budget is: #{@budget}"
    end
end



# main class
class Supermarket 

    # when initialized, calls welcome method
    def initialize
        @funds = Funds.new
        
        @item_options = {bread: 2, milk: 3.50, coffee: 5, butter: 4, cereal: 5, salmon: 13, chicken: 10, tea: 6}
        welcome
    end

    def welcome
        
        

        continue = true
        while continue
            system "clear"
            
            # options displayed to user to navigate through app
            menu_options = ["View/alter balance(b)", "View items for sale(s)", "exit(e)"]
            puts "Hi welcome to the Supermarket! what would you like to do?(#{menu_options.join(", ")})"
            menu_input = gets.strip.downcase

            case menu_input
            when "b"
                continue_2 = true
                while continue_2
                    system "clear"
                    @funds.view_budget
                    budget_options = ["Add to budget(a)", "Remove from budget(r)", "Return to menu(m)"]
                    puts "What would you like to do?(#{budget_options.join(", ")})"
                    budget_input = gets.strip.downcase
                        case budget_input 
                        when "a"
                            @funds.add_to_budget
                        when "r"
                            @funds.remove_from_budget
                        when "m"
                            continue_2 = false
                        end
                end
                
            when "s"
                continue_3 = true
                while continue_3
                    system "clear"
                    view_items
                    puts "What would you like to do? (view items in cart(i), add items to cart(a), remove items from cart(r) or return to menu(e))"
                    cart_input = gets.strip.downcase
                    case cart_input 
                    when "i"
                        ShoppingCart.view_cart
                    when "a"
                        ShoppingCart.add_to_cart
                    when "r"
                        ShoppingCart.remove_from_cart
                    when "e"
                        continue_3 = false
                    end
                end
            when "e"
                puts "Goodbye, see you soon :)"
                sleep(3)
                exit
            end
        end

    end

    def view_items 
        @item_options.each {|k,v|
            puts "#{k} - $#{v}"        
        }
    end

    
end



# cart class
class ShoppingCart < Supermarket

    def initialize
        super
        @cart = []
    end

    



    def self.view_cart
        if @cart == nil
            puts "Your cart is empty"
        else
            puts "Your current cart: #{@cart.join(", ")}"
        end

    end


    def self.add_to_cart
        puts "What would you like to add your cart?"
        puts @item_options
        # cart_input = gets.strip.downcase.to_sym

        # if @item_options.key?(cart_input) == true
        #     @cart << cart_input
        #     puts "Your current shopping cart: #{@cart}"
        # else 
        #     puts "We do not sell that, sorry. Try again."
        #     # retry
        # end
    end

    def self.remove_from_cart
        puts "What would you like to remove?"
        remove_input = gets.strip.downcase
        if @cart.include?(remove_input) == true
            @cart.delete(remove_input)
        else
            puts "That item is not in your cart."
            # retry
        end

    end



end


s = Supermarket.new
# f = Funds.new
# f.view_budget




# 2 x classes
# 1 x initialize
# 2 x method
# 1 x loop


# what you need for a shopping cart:

# budget for shopper
#       display budget and update budget based on items added to cart
# items and associated costs 
#       display all available items and their cost and number of items available
# 


# a budget method
# 



