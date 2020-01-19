Rails.application.routes.draw do
  get 'artists/new'
  get 'artists/create'
  get 'artists/index'
  get 'artists/show'
  get 'artists/edit'
  get 'artists/update'
  get 'artists/destroy'

  #CREATE

  #READ
  # 1. Index of artists
  get '/artists' => 'artists#index'
  # 2. Show page for a single artist details
  get '/artists/:id' => 'artists#show', as: 'artist' #can access artist_path
  #UPDATE

  #DESTROY
end
