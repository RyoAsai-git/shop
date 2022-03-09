class CreateShopUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :shop_users do |t|
      t.references :user,  index: true, foreign_key: true
      t.references :shop, index: true, foreign_key: true
      t.timestamps
    end
  end
end
