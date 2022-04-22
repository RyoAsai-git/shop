class CreateBrands < ActiveRecord::Migration[6.0]
  def change
    create_table :brands do |t|
      t.string :name, limit: 100, null: false
      t.text :image
      t.text :description
      t.text :brand_url
      t.timestamps
    end
  end
end
