class CalculatorController < ApplicationController
    def home
    end

    def result
        p params
        puts "The result is: #{params}"

        @first_num = params[:first_num].to_f
        @second_num = params[:second_num].to_f
        @op = params[:op]
        @result = @first_num.send(@op, @second_num)
    end


end