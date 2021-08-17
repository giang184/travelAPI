module Response
  def json_response(object, status = :ok)
    render json: object, status: status
  end
end

# if params[:country] && params.length == 1
#   @search_reviews = Review.search(params[:country])
#   return json_response(@search_reviews)
# elsif params[:city] && params.length == 1
#   @search_reviews = Review.city_search(params[:city])
#   return json_response(@search_reviews)
# elsif params.length == 2
#   rescue_from ActiveRecord::RecordInvalid do |exception|
#   json_response({ message: "pass in one search parameter please" }, :unprocessable_entity)
#   end
# end