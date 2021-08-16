class SearchController < ApplicationController

  def index
    country = params[:country]
    @reviews = Review.search(country)
    json_response(@reviews)
  end
end
