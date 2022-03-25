class AddReferencesToBrand < ActiveRecord::Migration[6.0]
  def change
    add_reference :brands, :shop, foreign_key: true
  end
end
