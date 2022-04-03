class BrandsController < ApplicationController
  def index
    brands = Brand.all
    brands_array = brands.map do |brand|
      {
        id: brand.id,
        name: brand.name,
        image: brand.image,
        description: brand.description,
        brand_url: brand.brand_url
      }
    end

    render json: brands_array, status: 200
  end

  def likes
    user = User.find(params[:id])
    # userId = user.id

    brand = Brand.find(params[:id])
    # brandId = brand.id
    Brand_user.create(user_id: user.id, brand_id: brand.id)
    # render json: user, status: 200

    # Brand_user.create(user_id: current_user.id, brand_id: brand.id)
  end
end
