class BrandsController < ApplicationController
  def index
    brands = Brand.all
    brands_array = brands.map do |brand|
      {
        id: brand.id,
        name: brand.name,
        image: brand.image,
        description: brand.description,
        brand_url: brand.brand_url,
      }
    end

    render json: brands_array, status: 200
  end
end
