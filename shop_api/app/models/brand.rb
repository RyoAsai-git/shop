class Brand < ApplicationRecord
  has_many :users, through: :brand_users
  # accepts_nested_attributes_for :brand_users
end
