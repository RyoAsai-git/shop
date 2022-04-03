class UsersController < ApplicationController
  def show
    user = User.includes([:brands, :shops]).find(params[:id])
    brands = user.brands
    shops = user.shops
    render json: user.to_json(:include => [:brands, :shops])
  end
end
