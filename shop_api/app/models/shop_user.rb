class ShopUser < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :shop, optional: true
end
