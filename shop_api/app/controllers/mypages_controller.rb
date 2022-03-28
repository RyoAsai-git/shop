class MypagesController < ApplicationController
  def show
    user = User.find(params[:id])
    # user = User.include(:brand_user).where(params[:id])
    render json: user, status: 200;
  end
end
