class Item < ApplicationRecord
  # refileの使用
  attachment :image
  # アソシエーション
  belongs_to :genre
  has_many :cart_items
  has_many :order_details
end
