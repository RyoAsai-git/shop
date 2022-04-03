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

  def likes
    brand = Brand.find(params[:brand_id])
    user = User.find(params[:user_id])

    like = BrandUser.new(user_id: user.id, brand_id: brand.id)
    if like.save
    render json: { user_id: user.id, brand_id: brand.id, message: '成功しました' }, status: 200
    else
      render json: { message: '保存できませんでした', errors: like.errors.messages }, status: 400
    end
  end
end
