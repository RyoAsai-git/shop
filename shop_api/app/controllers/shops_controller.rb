class ShopsController < ApplicationController
  def index
    shops = Shop.all
    render json: shops, status: 200
  end

  def show
    shops = Shop.includes(:brands).find(params[:id])
    render json: shops.to_json(:include => [:brands]);
  end

  def likes
    shop = Shop.find(params[:shop_id])
    user = User.find(params[:user_id])

    like = ShopUser.new(user_id: user.id, shop_id: shop.id)
    if like.save
      render json: { user_id: user.id, shop_id: shop.id, message: '成功しました' }, status: 200
    else
      render json: { message: '保存できませんでした', errors: like.errors.messages }, status: 400
    end
  end

  def delete_likes
    shop = Shop.find(params[:shop_id])
    user = User.find(params[:user_id])

    like = ShopUser.find_by(shop_id: shop.id, user_id: user.id)
    if like.destroy
      render json: { user_id: user.id, shop_id: shop.id, message: '削除に成功しました' }, status: 200
    else
      render json: { message: '削除できませんでした', errors: like.errors.messages }, status: 400
    end
  end
end
