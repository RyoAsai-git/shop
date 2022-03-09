class CreateShopBrands < ActiveRecord::Migration[6.0]
  def change
    create_table :shop_brands do |t|
      t.references :shop_id, index: true, foreign_key: true
      t.references :brand_id, index: true, foreign_key: true
      t.timestamps
    end
  end
end
