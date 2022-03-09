class CreateShopBrands < ActiveRecord::Migration[6.0]
  def change
    create_table :shop_brands do |t|
      t.integer :shop_id
      t.integer :brand_id
      t.timestamps
    end
  end
end
