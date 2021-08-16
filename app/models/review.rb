class Review < ApplicationRecord
  scope :top_rated, -> { where(rating: 5).limit(5)}

  scope :search, -> (parameter) { where('LOWER(country) like ?', "%#{parameter.downcase}%")}
end