class Shop < ApplicationRecord
  has_many :shop_users
  has_many :users, through: :shop_users
  has_many :shop_brands
  has_many :brands, through: :shop_brands
  # accepts_nested_attributes_for :shop_users
end
