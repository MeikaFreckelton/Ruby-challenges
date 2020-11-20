class Movement 
    def drive
        puts "we are driving"
    end
end

class Automobile
end

class Car < Automobile
    def initialize
        # inside a class you can always create an instance 
        # variable of another class and call the methods of another class
        @movement = Movement.new
    end

    def drive
        @movement.drive
    end
end
