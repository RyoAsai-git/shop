class ShopsController < ApplicationController
  def index
    shops = Shop.all
    shops_array = shops.map do |shop|
      {
        id: shop.id,
        shop_name: shop.name,
        shop_image: shop.image,
        shop_description: shop.description,
        shop_url: shop.shop_url,
        created_at: shop.created_at,
      }
    end

    render json: shops_array, status: 200
  end
end
