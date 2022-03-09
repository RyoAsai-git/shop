class CreateShopBrands < ActiveRecord::Migration[6.0]
  def change
    create_table :shop_brands do |t|
      t.references :shop,  index: true, foreign_key: true
      t.references :brand, index: true, foreign_key: true
      t.timestamps
    end
  end
end
