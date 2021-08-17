class TopRatedController < ApplicationController

  def index
    @reviews = Review.top_rated
    json_response(@reviews)
  end

  def review_number
    @country = Review.number_of_reviews
    @search = Review.search(@country)
    json_response(@search)
  end

  def average_review
    @country = Review.average_rating
    @search = Review.search(@country)
    json_response(@search)
  end
  
  def random
    @country = Review.random_country
    # @search = Review.search(@country)
    json_response(@country)
  end

end