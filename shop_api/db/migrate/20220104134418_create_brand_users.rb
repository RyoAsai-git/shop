class CreateBrandUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :brand_users do |t|
      t.references :user_id,  index: true, foreign_key: true
      t.references :brand_id, index: true, foreign_key: true
      t.timestamps
    end
  end
end
