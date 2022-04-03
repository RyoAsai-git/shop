class UsersController < ApplicationController
  def show
    user = User.includes([:brands, :shops]).find(params[:id])
    brands = user.brands
    shops = user.shops
    render json: user.to_json(:include => [:brands, :shops])
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
