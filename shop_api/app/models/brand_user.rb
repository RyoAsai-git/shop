class BrandUser < ApplicationRecord
  belongs_to :users, optional: ture
  belongs_to :brands, optional: true
end
