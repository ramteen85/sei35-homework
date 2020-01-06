Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # 1. Menu

  # Homepage of menu
  get '/' => 'menu#home'

  # 2. 8ball

  # 8ball home
  get '/eightball' => 'eightball#home'

  # 8ball Answer Page
  get '/eightball/answer' => 'eightball#answer'

  # 3. Secret Number
 
  # Secret Number Home
  get '/secret' => 'secret#home'

  # Secret Number Result
  get '/secret/result' => 'secret#result'

  # 4. Rock Paper Scissors

  # Rock Paper Scissors home
  get '/rps' => 'rockpaperscissors#home'

  # Rock Paper Scissors throw
  get '/rps/throw' => 'rockpaperscissors#throw'
end
