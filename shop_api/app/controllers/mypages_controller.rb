class MypagesController < ApplicationController
  def show
    user = User.includes(brand_users: :brand).find(params[:id])
    
    render json: user, status: 200;
  end

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
end
