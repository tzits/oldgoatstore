class User < ApplicationRecord
  has_many :saved_items
  has_many :orders
end
