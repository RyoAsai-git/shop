class UsersController < ApplicationController
  def show
    user = User.includes([:brands, :shops]).find(params[:id])
    brands = user.brands
    shops = user.shops
    render json: user.to_json(:include => [:brands, :shops])
  end

  # 名前更新可能
  # def update
  #   user = User.find(params[:id])
  #   user.update(name: params[:name])
  # end

  # def update
  #   user = User.find(params[:id])
  #   user.update(icatch: params[:icatch])
  # end

  # private
  # def user_params
  #   params.permit(:name, :icatch)
  # end
end
