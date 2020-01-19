class Luhn
   
    def initialize number
        @number = number
    end

    def prepare_digits
        #initialize array
        all_digits = []

        @number.digits.each_with_index do |digit, index|
          
            digit *= 2 if index % 2 != 0
            # if >= 10, do -9
            digit -= 9 if digit >= 10 
            #save digit to array
            all_digits << digit
        end

        p all_digits

    end

    def valid?
        numbers = prepare_digits
        total = numbers.inject(0, :+)

        if total % 10 == 0
            puts "#{@number} is a valid Luhn number."
        else
            puts "#{@number} is NOT a valid Luhn number."
            @number = @number + (10 - total % 10)
            puts "#{@number} would be a valid Luhn number"
        end
    end

end

l = Luhn.new(3559)
l.valid?

l = Luhn.new(8763)
l.valid?