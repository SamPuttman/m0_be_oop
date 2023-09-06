# Write a class called Unicorn
# it should have a dynamic name attribute
# it should have a color attribute, that is silver by default
# it should have a method called "say" that returns whatever string is passed in, with "*~*" at the beginning and end of the string

class Unicorn
    attr_accessor :name, :color
    def initialize(name, color = "silver")
        @name = name
        @color = color
    end
    def say(message)
        "*~* #{message} *~*"
    end
end

unicorn1 = Unicorn.new("Magicsparklebutt", "Rainbow")
unicorn2 = Unicorn.new("Doofus", "Cyan")
unicorn3 = Unicorn.new("Drangus")

message = "Greetings mortals! I am a unicorn!"

puts unicorn1.say(message)
puts unicorn2.say(message)


#  Write a class called Vampire
#  it should have a dynamic name attribute
#  it should have a pet attribute, that is a bat, by default BUT it could be dynamic if info is passed in initially
#  it should have a thirsty attribute, that is true by default
#  it should have a drink method. When called, the thirsty attribute changes to false

class Vampire
    attr_accessor :name, :pet, :thirsty, :drink
    def initialize(name, pet = "bat", thirsty = true)
        @name = name
        @pet = pet
        @thristy = thirsty
    end
    def drink
        @thristy = false
    end
end

vampire1 = Vampire.new("Dracula")
vampire2 = Vampire.new("Nicolas Cage", "wolf", false)
vampire1.drink
vampire2.drink

#  Write a Dragon class
#  it should have a dynamic name attribute (string)
#  it should have a dynamic rider attribute (string)
#  it should have a dynamic color attribute (string)
#  it should have a is_hungry attribute that is true by default
#  it should have a eat method. If the dragon eats 4 times, it is no longer hungry

class Dragon
    attr_accessor :name, :rider, :color, :is_hungry, :yummies
    def initialize(name, rider, color, is_hungry = true, yummies = 0)
        @name = name
        @rider = rider
        @color = color
        @is_hungry = is_hungry
        @yummies = yummies
    end
    def eat
        if is_hungry == true
            @yummies += 1
            if @yummies >= 4
                @is_hungry = false
                puts "#{name} is full!"
            else
                puts "#{name} has eaten #{yummies} times and is not yet full!"
            end
        else
            puts "#{name} isn't feeling hungry... yet."
    end
end

dragon1 = Dragon.new("Smaug", "none", "red")

dragon1.eat


#  Write a Hobbit class
#  it should have a dynamic name attribute (string)
#  it should have a dynamic disposition attribute (string)
#  it should have an age attribute that defaults to 0
#  it should have a celebrate_birthday method. When called, the age increases by 1
#  it should have an is_adult attribute (boolean) that is false by default. once a Hobbit is 33, it should be an adult
#  it should have an is_old attribute that defaults to false. once a Hobbit is 101, it is old.
#  it should have a has_ring attribute. If the Hobbit's name is "Frodo", true, if not, false.

class Hobbit
    attr_accessor :name, :disposition, :age, :is_adult, :is_old, :has_ring
    def initialize(name, disposition, age = 0, is_adult = false, is_old = false)
        @name = name
        @disposition = disposition
        @age = age
        @is_adult = is_adult
        @is_old = is_old
        @has_ring = has_ring
    end
# Got this working!
    def celebrate_birthday
        @age += 1
    end
# Got this working too! (screams internally)
    def grown_up?
        if  @age >= 101
            is_old == true
            puts "At #{age} years old, #{name} is an old hobbit!"
        elsif
            @age >= 33
            is_adult == true
            puts "At #{age} years old, #{name} is an adult hobbit!"
        else
            @age < 33
            is_adult == false
            is_old == false
            puts "At #{age} years old, #{name} has not yet come of age."
        end
    end
# IT WOOOOORKS!
    def ring_bearer?
        if  @name == "Frodo"
            @has_ring == true
            puts "#{name} is the bearer of the ring and must cast it into the fires of Mount Doom!"
        else
            @has_ring == false
            puts "#{name} is not the ring bearer."
        end
    end
end

hobbit1 = Hobbit.new("Frodo", "Courageous", 22)
hobbit2 = Hobbit.new("Sam", "Hungry", 24)


hobbit1.celebrate_birthday
hobbit1.grown_up?

hobbit2.celebrate_birthday
hobbit2.grown_up?





