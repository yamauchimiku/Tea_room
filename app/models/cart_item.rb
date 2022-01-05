class CartItem < ApplicationRecord
  # アソシエーション
  belongs_to :item
  belongs_to :customer
end
