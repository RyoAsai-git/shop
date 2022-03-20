class ShopBrand < ApplicationRecord
  belongs_to :shop, optional: true
  belongs_to :brand, optional: true
end
