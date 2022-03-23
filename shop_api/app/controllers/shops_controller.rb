class ShopsController < ApplicationController
  def index
    shops = Shop.all.includes(shop_brands: :brand)
    shops_array = shops.map do |shop|
      {
        id: shop.id,
        name: shop.name,
        image: shop.image,
        description: shop.description,
        url: shop.shop_url,
        created_at: shop.created_at,
        brands: shop.shop_brands.map do |brand|
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

    render json: shops_array.to_json(include: :brand), status: 200
  end
end
