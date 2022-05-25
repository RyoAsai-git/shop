class BrandsController < ApplicationController
  def index
    brands = Brand.all
    render json: brands, status: 200
  end

  def show
    brands = Brand.includes(:shops).find(params[:id])
    render json: brands.to_json(:include => [:shops])
  end

  def likes
    brand = Brand.find(params[:brand_id])
    user = User.find(params[:user_id])

    like = BrandUser.new(user_id: user.id, brand_id: brand.id)
    if like.save
      render json: { user_id: user.id, brand_id: brand.id, message: "成功しました" }, status: 200
    else
      render json: { message: "保存できませんでした", errors: like.errors.messages }, status: 400
    end
  end

  def delete_likes
    brand = Brand.find(params[:brand_id])
    user = User.find(params[:user_id])

    like = BrandUser.find_by(brand_id: brand.id, user_id: user.id)
    if like.destroy
      render json: { user_id: user.id, brand_id: brand.id, message: "削除に成功しました" }, status: 200
    else
      render json: { message: "削除できませんでした", errors: like.errors.messages }, status: 400
    end
  end
end
