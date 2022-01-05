class Genre < ApplicationRecord
  # アソシエーション
  has_many :items
end
