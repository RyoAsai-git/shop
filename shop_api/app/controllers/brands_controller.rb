class BrandsController < ApplicationController
  def index
    brands = Brand.all
    brands_array = brands.map do |brand|
      {
        id: brand.id,
        name: brand.name,
      }
  end
end
