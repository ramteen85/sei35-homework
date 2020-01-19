require 'pry'

class Atbash

    def initialize input

        @word = input.downcase
        @abc = ('a'..'z').to_a
        @abc_reverse = @abc.reverse

    end

    # Option 1 looping with .each_char
    # def encode 
    #     message = ""
    #     @word.each_char do |letter|
    #         index = @abc.index(letter)
    #         cipher_character = @abc_reverse[index]
    #         message << cipher_character
    #     end 
    #     message
    # end

    def encode
        @word.chars.map { |letter|
            if letter == " "
                cipher_character = " "
            else
                index = @abc.index(letter)
                cipher_character = @abc_reverse[index]
            end
            cipher_character
        }.join
    end

end

puts "What's your secret message?"
word = gets.chomp
puts "=" * 20
cipher = Atbash.new(word)

puts cipher.encode