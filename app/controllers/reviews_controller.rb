require 'pry'
class ReviewsController < ApplicationController

  def index
    @reviews = Review.all
    if params[:country] && params[:city]
      @search_reviews = Review.new_search2(params[:country], params[:city])
      return json_response(@search_reviews)
    elsif params[:city]
      @search_reviews = Review.city_search(params[:city])
      return json_response(@search_reviews)
    elsif params[:country]
      @search_reviews = Review.search(params[:country])
      return json_response(@search_reviews)
    else
      json_response(@reviews)
    end
  end

  def show
    @review = Review.find(params[:id])
    json_response(@review)
  end

  def create
    @review = Review.create!(review_params)
    json_response(@review, :created)
  end

  def update
    @review = Review.find(params[:id])
    if @review.update!(review_params)
      render status: 200, json: {
        message: "This review has been updated successfully."
      }
    end
  end

  def destroy
    @review = Review.find(params[:id])
    if @review.destroy!
      render status: 200, json: {
        message: "This review has been deleted successfully."
      }
    end
  end

  private
  def review_params
    params.permit(:author, :content_body, :country, :city, :rating)
  end
end