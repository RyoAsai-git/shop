class ShopsController < ApplicationController
  def index
    shops = Shop.all
    shops_array = shops.map do |shop|
      {
        id: shop.id,
        name: shop.name,
        image: shop.image,
        description: shop.description,
        url: shop.shop_url,
        created_at: shop.created_at,
      }
    end

    render json: shops_array, status: 200
  end
end
