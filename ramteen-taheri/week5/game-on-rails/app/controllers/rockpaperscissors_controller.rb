class RockpaperscissorsController < ApplicationController
    def home

    end

    def throw
        outcomes = ['Rock', 'Paper', 'Scissors']
        @your_throw = params['throw']
        @computer_throw = outcomes.sample
        @result = ''

        if @computer_throw == @your_throw
            @result = 'You rolled even'
        elsif @computer_throw == 'Rock' && @your_throw == 'Scissors'
            @result = 'Computer has won!'
        elsif @computer_throw == 'Rock' && @your_throw == 'Paper'
            @result = 'You have won!'
        elsif @computer_throw == 'Paper' && @your_throw == 'Rock'
            @result = 'Computer has won!'
        elsif @computer_throw == 'Paper' && @your_throw == 'Scissors'
            @result = 'You have won!'
        elsif @computer_throw == 'Scissors' && @your_throw == 'Paper'
            @result = 'Computer has won!'
        elsif @computer_throw == 'Scissors' && @your_throw == 'Rock'
            @result = 'You have won!'
        end

    end
end