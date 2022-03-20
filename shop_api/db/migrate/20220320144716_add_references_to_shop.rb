class AddReferencesToShop < ActiveRecord::Migration[6.0]
  def change
    add_reference :shops, :brand, foreign_key: true
  end
end
