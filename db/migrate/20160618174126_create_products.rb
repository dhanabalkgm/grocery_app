class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.float :price
      t.integer :brand_id, :volume_id, :delivery_period

      t.timestamps null: false
    end
  end
end
