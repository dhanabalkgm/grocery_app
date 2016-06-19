class CreateVolumes < ActiveRecord::Migration
  def change
    create_table :volumes do |t|
      t.float :number
      t.string :unit

      t.timestamps null: false
    end
  end
end
