Rails.application.routes.draw do
  resources :reviews
  get '/top_rated' => 'top_rated#index'
  get '/top_rated/review_number' => 'top_rated#review_number'
  get '/search' => 'search#index'
end