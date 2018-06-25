class CreateInventoryAdjustments < ActiveRecord::Migration[5.2]
  def change
    create_table :inventory_adjustments do |t|
      t.references :product, foreign_key: true, null: false
      t.integer :quantity, null: false

      t.timestamps
    end
  end
end
