Rails.application.routes.draw do
  # STOCKS

  # 1. Blank Form
  get '/stocks' => 'stocks#form'

  # 2. Form Submits, does stock lookup and prints results
  get '/stocks/lookup' => 'stocks#do_lookup'

  # Movies

  # 1. Blank Form
  get '/movies' => 'movies#form'

  # 2. Search Movies
  get '/movies/search' => 'movies#get_results'

  # 3. Details page (show page) for a single result
  get 'movies/results/:id' => 'movies#movie_info'

end



