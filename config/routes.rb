Rails.application.routes.draw do
  resources :reviews
  get '/top_rated' => 'top_rated#index'
  get '/top_rated/review_number' => 'top_rated#review_number'
  get '/top_rated/average_review' => 'top_rated#average_review'
  get '/search' => 'search#index'
end