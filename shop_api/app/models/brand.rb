class Brand < ApplicationRecord
  has_many :users, through: :brand_users
end
