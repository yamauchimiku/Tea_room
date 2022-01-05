class Order < ApplicationRecord
  # アソシエーション
  belongs_to :customer
  has_many :order_details
end
