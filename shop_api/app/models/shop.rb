class Shop < ApplicationRecord
  has_many :users, through: :shop_users
end
