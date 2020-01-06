require 'pry'

class Person

    #this will write the getter and setter methods for the @name instance variable

    attr_accessor :name
    
    # to make the @age instance cariable accessible to the outside world. this is a 'getter'
    def age
        @age
    end

    # create a 'setter' method so that age can be set from outside the class
    def age=(new_age)
        @age = new_age
    end

    #this is a class function not an instance function
    def self.describe_person
        
    end

    #constructor
    def initialize(first_name, current_age)
        puts "you will see this code when you run person.new"

        @number = rand 100
        @name = first_name
        @age = current_age
    end

    def hello
        puts "Hello! I am a #{ @name }! Please like and subscribe to my page."
        puts "My Lucky number is #{ @number }"
    end

    def goodbye 
        puts "It was great to meet you! Don't forget to follow me on instagram"
    end
end

#child class of person
class Comedian < Person

    def hello
        #super runs the method from the parent class
        super
        puts "Check out my podcast!"
        self.tell_joke
    end

    def tell_joke
        print "What's brown and sticky?"
        3.times do
            print '.'
            sleep 0.4
        end
        puts "A stick! HAHAHA!"
    end
end

binding.pry
puts "stop here please"