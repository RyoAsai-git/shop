class MypagesController < ApplicationController
  def show
    # user = User.includes(:brands).find(params[:id])
    user = User.includes([:brands, :shops]).find(params[:id])
    brands = user.brands
    shops = user.shops
    render json: user.to_json(:include => [:brands, :shops])

    # shop追加後はここから
    # render json: user.to_json(:include => [:shops, :brands])
  end
end
