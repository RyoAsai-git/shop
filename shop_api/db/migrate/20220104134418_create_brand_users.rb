class CreateBrandUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :brand_users do |t|
      t.references  :user,  index: true, foreign_key: true
      t.references  :brands, index: true, foreign_key: true
      t.timestamps
    end
  end
end
