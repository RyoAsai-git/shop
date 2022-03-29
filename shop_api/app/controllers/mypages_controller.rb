class MypagesController < ApplicationController
  def show
    user = User.includes(:brands).find(params[:id])
    brands = user.brands
    render json: user.to_json(:include => [:brands])

    # shop追加後はここから
    # render json: user.to_json(:include => [:shops :brands])
  end
end
