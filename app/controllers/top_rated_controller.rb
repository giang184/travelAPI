class TopRatedController < ApplicationController

  def index
    @reviews = Review.top_rated
    json_response(@reviews)
  end
end