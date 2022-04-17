class UsersController < ApplicationController
  def show
    user = User.includes([:brands, :shops]).find(params[:id])
    brands = user.brands
    shops = user.shops
    render json: user.to_json(:include => [:brands, :shops])
  end

  def update
    user = User.find(params[:id])
    if user.update(icatch: params[:icatch])
      render json: { user_id: user.id, message: '画像のアップロードに成功しました' }, status: 200
    else
      render json: { message: '画像をアップロードできませんでした', errors: user.errors.messages }, status: 400
    end
  end
end
