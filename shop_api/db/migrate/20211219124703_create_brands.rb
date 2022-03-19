class CreateBrands < ActiveRecord::Migration[6.0]
  def change
    create_table :brands do |t|
      t.string :name, limit: 100, null: false
      t.string :image
      t.text :description
      t.text :brand_url
      t.references :shops, index: true, foreign_key: true
      t.timestamps
    end
  end
end
