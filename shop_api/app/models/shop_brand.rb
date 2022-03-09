class ShopBrand < ApplicationRecord
  belongs_to :shops, optional: ture
  belongs_to :brands, optional: true
end
