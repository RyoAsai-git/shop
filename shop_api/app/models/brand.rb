class Brand < ApplicationRecord
  has_many :shop_users
  has_many :users, through: :brand_users

  has_many :shop_brands
  has_many :shops, through: :shop_brands

  has_many :brand_users
  has_many :users, through: :brand_users
end
