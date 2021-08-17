class Review < ApplicationRecord
  scope :top_rated, -> { where(rating: 5).limit(5)}
  scope :search, -> (parameter) { where('LOWER(country) like ?', "%#{parameter.downcase}%")}
  scope :city_search, -> (parameter) { where('LOWER(city) like ?', "%#{parameter.downcase}%")}

  def self.new_search2(parameter1, parameter2)
    where('LOWER(country) like ?', parameter1.downcase).or(Review.where('LOWER(city) like ?', parameter2.downcase))
  end

  def self.number_of_reviews
    reviews = Review.all
    country_hash = {}
    reviews.each { |review|
      country = review.country.downcase
      if(!country_hash.keys.include?(country)) 
        country_hash[country]=1
      else
        country_hash[country] += 1
      end
    }
    country_hash.max_by{|k,v| v}[0]
  end
end

# new route?  localhost:3000/reviews/top_rated
# lebanon has 5 review and an average of 3
# need to the above for every country and then put out the top rated