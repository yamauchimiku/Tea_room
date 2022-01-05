class OrderDetail < ApplicationRecord
  # アソシエーション
  belongs_to :order
  belongs_to :item
end
