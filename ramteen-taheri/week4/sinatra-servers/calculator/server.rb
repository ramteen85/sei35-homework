require 'sinatra'
require 'sinatra/reloader'

get "/" do
    erb :intro
end

#teachers solution
get "/calc/:number/:operator/:snumber" do
    @num1 = params[:number].to_f
    @op = params[:operator]
    @num2 = params[:snumber].to_f

    # "First: #{params[:number]}<br>,
    # Second: #{params[:snumber]}<br>,
    # OP: #{params[:operator]}"

    # if @op == '+'
    #     @result = @num1 + @num2
    # elsif @op == '-'
    #     @result = @num1 - @num2
    # elsif @op == 'div'
    #     @result = @num1 / @num2
    # elsif @op == '*'
    #     @result = @num1 * @num2

    # end

    # case @op
    # when '+' then @result = @num1 + @num2
    # when '-' then @result = @num1 - @num2
    # when '*' then @result = @num1 * @num2
    # when 'div' then @result = @num1 / @num2
    # else
    #     @result = "invalid calculation"
    # end

    @result = @num1.send(@op, @num2).round(2)


    erb :calc
end

#my attempt
# get "/calc/:number/:operator/:snumber" do
#     @num1 = params[:number]
#     @op = params[:operator]
#     @num2 = params[:snumber]
#     @answer = 0

#     case @op
#     when "+"
#         @answer = @num1.to_f + @num2.to_f
#     when "-"
#         @answer = @num1.to_f - @num2.to_f
#     when "/"
#         @answer = @num1.to_f / @num2.to_f
#     when "*"
#         @answer = @num1.to_f * @num2.to_f
#     else
#         @answer = "error"
#     end

#     erb :calc
# end

# form based calculator

get "/calc/" do
    erb :form
end

get "/calc/result" do
    @num1 = params[:number].to_f
    @op = params[:operator]
    @num2 = params[:snumber].to_f

    @result = @num1.send(@op, @num2)

    # reuse our previous template
    erb :calc
end