class MypagesController < ApplicationController
  def index
    users = User.all.includes(brand_users: :brand)
    users_array = users.map do |user|
      {
        id: user.id,
        name: user.name,
        email: user.email,
        brands: user.brand_users.map do |brand|
          {
            id: brand.brand.id,
            name: brand.brand.name,
            image: brand.brand.image,
            description: brand.brand.description,
            url: brand.brand.brand_url,
          }
        end
      }
    end

    render json: users_array.to_json(include: :brand), status: 200
  end

  def show
    user = User.includes(:brands).find(params[:id])
    brands = user.brands
    render json: user.to_json(:include => [:brands])

    # shop追加後はここから
    # render json: user.to_json(:include => [:shops :brands])
  end
end
