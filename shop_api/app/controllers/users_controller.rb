class UsersController < ApplicationController
  def show
    user = User.includes([:brands, :shops]).find(params[:id])
    brands = user.brands
    shops = user.shops
    render json: user.to_json(:include => [:brands, :shops])
  end

  def likes
    user = User.find(params[:id])
    brand = Brand.find(params[:id])
    like = BrandUser.new(user_id: user.id, brand_id: brand.id)
    if like.save
    render json: { user_id: user.id, brand_id: brand.id, message: '成功しました' }, status: 200
    else
      render json: { message: '保存できませんでした', errors: like.errors.messages }, status: 400
    end
  end
end
