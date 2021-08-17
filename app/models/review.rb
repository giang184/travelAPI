class Review < ApplicationRecord
  scope :top_rated, -> { where(rating: 5).limit(5)}
  scope :search, -> (parameter) { where('LOWER(country) like ?', "%#{parameter.downcase}%")}
  scope :city_search, -> (parameter) { where('LOWER(city) like ?', "%#{parameter.downcase}%")}

  def self.new_search2(parameter1, parameter2)
    where('LOWER(country) like ?', parameter1.downcase).or(Review.where('LOWER(city) like ?', parameter2.downcase))
  end
end