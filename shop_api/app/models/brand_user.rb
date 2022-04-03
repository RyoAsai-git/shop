class BrandUser < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :brand, optional: true

  validates :user_id, uniqueness: { scope: :brand_id }
end
