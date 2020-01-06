require 'sinatra' # an import
require 'sinatra/reloader' # reload the server automatically on changes

# define some routes that this webserver will respond to
# i.e. when you see a certain path request, run block of code
# and send back a response string to the browser


# Respond to requests to the sites root page / index
get "/" do
    # whatever the last line of the block evaluates to, that is what
    # the browser will see, i.e. it is the servers response
    # "<h1>Hello World from this awesome site!</h1>"

    #look into the views/ folder for a file that starts with 'welcome'
    erb :welcome
end

get "/luckynumber" do

    # "Your lucky number was: #{rand 1..100}"
    @number = rand 1..100
    erb :lucky
end

get "/uptime" do
    "System uptime: #{`uptime`}"
end

# get "/hello/josh" do
#     "Hello Josh"
# end

# get "/hello/amanda" do
#     "Hello Amanda"
# end


# match any path that starts with /hello/ followed by any string
# sinatra saves that string into the params hash
# they key to give us the actual string that was used in the path,
# will be the symbol we used in the get stringm, i.e. :student in this example

get '/hello/:student' do
    hello_recipient = params[:student]
    "Hello #{hello_recipient}"
end

get "/hello/:name/:mood" do

    "Hello, #{params[:name]}, I hope you are #{params[:mood]}"
end