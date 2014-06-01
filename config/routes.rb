Rails.application.routes.draw do

  get '/' => 'dashboard#index'
  get '/song' => 'song#index'
  get '/song/new' => 'song#new'
  post '/song' => 'song#create'

end
