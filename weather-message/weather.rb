# 15. *You have access to two variables: raining (boolean) and temperature (integer). 
# If it’s raining and the temperature is less than 15 degrees, print to the screen “It’s wet and cold”, 

# if it is less than 15 but not raining print “It’s not raining but cold”. 

#     If it’s greater than or equal to 15 but not raining print “It’s warm but not raining”, 

#     and otherwise tell them “It’s warm and raining”.*

def print_message(raining, temperature)
    if raining == true and temperature < 15
        print "It's wet and cold"
    elsif raining == false and temperature < 15
        print "It's not raining but cold"
    elsif raining == false and temperature >= 15
        print "It's warm but not raining"
    else 
        print "It's warm and raining"
    end
end

print_message(false, 20)