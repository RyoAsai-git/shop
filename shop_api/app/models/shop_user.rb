class ShopUser < ApplicationRecord
  belongs_to :users, optional: true
  belongs_to :shops, optional: true
end
