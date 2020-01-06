Rails.application.routes.draw do

  # The root or '/' route is special
  root to: 'pages#funny'

  # define a route to handle
  # VERB PATH => 'CONTROLLER#METHOD'
  get '/info' => 'pages#information'

  # dynamic path - ends up in params[:recipient], same as sinatra
  get '/hello/:recipient' => 'pages#say_hello_to'

  # CALCULATOR
  
  # 1. Blank Form
  get '/calc' => 'calculator#home'

  # 2. Form submits here (use get request)
  get '/calc/result' => 'calculator#result'
  
  
end
