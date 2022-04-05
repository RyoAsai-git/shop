class CreateBrandUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :brand_users do |t|
      t.integer :user_id
      t.integer :brand_id
      t.timestamps
    end
    add_index :brand_users, [:user_id, :brand_id], unique: true
  end
end
