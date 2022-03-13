class BrandUser < ApplicationRecord
  belongs_to :users, optional: true
  belongs_to :brands, optional: true
end
