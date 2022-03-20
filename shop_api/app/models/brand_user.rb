class BrandUser < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :brand, optional: true
end
