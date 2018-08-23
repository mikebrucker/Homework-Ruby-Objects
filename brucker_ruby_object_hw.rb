# Create a class to model a physical calculator
# Class Methods: Each of these methods accept two arguments value1 and value2 and output the result as a return value
# -- add
# -- subtract
# -- multiply
# -- divide

class Calc
    def initialize
    end

    def add(x, y)
        puts "#{x} + #{y} = #{x + y}"
    end

    def subtract(x, y)
        puts "#{x} - #{y} = #{x - y}"
    end

    def multiply(x, y)
        puts "#{x} * #{y} = #{x * y}"
    end

    def divide(x, y)
        puts "#{x} / #{y} = #{x.to_f / y}"
    end
end

calc = Calc.new

calc.add(1, 1)
calc.subtract(10, 3)
calc.multiply(2, 6)
calc.divide(33, 32)

# Elevator
# Create a class to model an elevator
# Instance Variables:
# -- floor - the floor you are currently on
# Instance Methods:
# -- The following methods will change the floor instance variable:
# -- -- go_up - tell the elevator to go up a floor
# -- -- go_down - tell the elevator to go down a floor
# -- floor - set this as a readable attribute to be accessed outside of the class definition
# -- cheery_greeting - display to the terminal the current floor with a interesting greeting
# -- Use the cheery_greeting method to display your greeting every time you change floors
# Challenge: If you are looking for a challenge then try these.
# -- Prevent the go_up method from going past the 12th floor
# -- Prevent the go_down method from going below the 1st floor

class Elevator
    attr_reader :floor
    
    def initialize(floor)
        if floor.round > 11
            @floor = 12
        elsif floor.round < 2
            @floor = 1
        else
            @floor = floor.round
        end
    end
    
    def cheery_greeting
        puts "You are on floor #{@floor} :)"
    end

    def go_up
        if @floor < 12
            @floor += 1
        end
        cheery_greeting
    end

    def go_down
        if @floor > 1
            @floor -= 1
        end
        cheery_greeting
    end

    def go_to(x)
        if x.round > 11
            @floor = 12
        elsif x.round < 2
            @floor = 1
        else
            @floor = x.round
        end
        cheery_greeting
    end
end

elev1 = Elevator.new(4)
elev2 = Elevator.new(25)

elev1.go_down
elev1.go_up
elev1.go_down
elev1.go_up
elev1.go_up
elev1.go_up
elev1.go_up

elev2.go_down