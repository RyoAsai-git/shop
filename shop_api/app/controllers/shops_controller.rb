class ShopsController < ApplicationController
  def index
    shops = Shop.all.includes(shop_brands: :brand)
    # shops = Shop.all
    shops_array = shops.map do |shop|
      {
        id: shop.id,
        name: shop.name,
        image: shop.image,
        description: shop.description,
        url: shop.shop_url,
        created_at: shop.created_at,
        # brand: shop.shop_brands
        brand_array: shop.shop_brands.map do |brand|
          {
            id: brand.brand.id,
            # shop_id: brand.shop_id,
            # brand_id: brand.brand_id,
            # created_at: brand.created_at,
            # updated_at: brand.updated_at,
            # name: brand.name,
            # image: brand.image,
            # description: brand.description,
            # url: brand.brand_url,
            name: brand.brand.name,
            image: brand.brand.image,
            description: brand.brand.description,
            url: brand.brand.brand_url,
          }
        end
      }
    end

    # render json: shops_array, status: 200
    render json: shops_array.to_json(include: :brand), status: 200
  end
end
