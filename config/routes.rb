Rails.application.routes.draw do

  get '/' => 'dashboard#index'
  get '/song' => 'song#index'
  get '/song/new' => 'song#new'
  post '/song' => 'song#create'
  get '/song/:id' => 'song#show'
  get '/song/:id/edit' => 'song#edit'
  put '/song/:id' => 'song#update'
  delete '/song/:id' => 'song#destroy'

end
