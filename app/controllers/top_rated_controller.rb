class TopRatedController < ApplicationController

  def index
    @reviews = Review.top_rated
    json_response(@reviews)
  end

  def review_number
    @country = Review.number_of_reviews
    json_response(@country)
  end
end