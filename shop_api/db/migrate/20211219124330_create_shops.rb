class CreateShops < ActiveRecord::Migration[6.0]
  def change
    create_table :shops do |t|
      t.string :name, limit: 100, null: false
      t.text :description
      t.text :shop_url
      t.timestamps
    end
  end
end
