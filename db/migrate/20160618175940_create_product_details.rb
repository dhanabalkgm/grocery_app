class CreateProductDetails < ActiveRecord::Migration
  def change
    create_table :product_details do |t|
      t.float :price
      t.float :delivery_within_hours
      t.integer :product_id, :volume_id, :brand_id

      t.timestamps null: false
    end
  end
end
