class Shop < ApplicationRecord
  has_many :users, through: :shop_users
  # accepts_nested_attributes_for :shop_users
end
