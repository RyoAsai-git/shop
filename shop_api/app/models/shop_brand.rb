class ShopBrand < ApplicationRecord
  belongs_to :shops
  belongs_to :brands
end
