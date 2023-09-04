class Dino 
    attr_accessor :name, :period, :diet
    attr_reader :color
    def initialize(name, period, color = "green", diet = "vegetarian")  
        @name = name
        @period = period
        @color = color
        @diet = diet
    end
    def roar
        puts "ROAAAAR! I am #{name}!"
    end
    def print_welcome
        puts "Welcome #{name} to the #{period} period. Enjoy your stay!"
    end
end