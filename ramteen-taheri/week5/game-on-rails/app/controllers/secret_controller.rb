class SecretController < ApplicationController
    def home

    end

    def result
        @answer = Random.new.rand(1..10)
        @your_selection = params['guess'].to_i
        @result = ''

        if @your_selection == @answer
            @result = 'You Guessed Correctly!'
        else
            @result = 'Sorry, Try Again!'
        end
            
    end
end