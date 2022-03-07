class ShopUser < ApplicationRecord
  belongs_to :users
  belongs_to :shops
end
