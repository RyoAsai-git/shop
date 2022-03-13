class ShopBrand < ApplicationRecord
  belongs_to :shops, optional: true
  belongs_to :brands, optional: true
end
