Rails.application.routes.draw do
  resources :reviews
  get '/top_rated' => 'top_rated#index'
  get '/search' => 'search#index'
end