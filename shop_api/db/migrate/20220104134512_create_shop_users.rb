class CreateShopUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :shop_users do |t|
      t.integer :user_id
      t.integer :shop_id
      t.timestamps
    end
    add_index :shop_users, [:user_id, :brand_id], :unique => true
  end
end
