class CreateLineItems < ActiveRecord::Migration[5.2]
  def change
    create_table :line_items do |t|
      t.references :sale, foreign_key: true, null: false
      t.references :product, foreign_key: true, null: false
      t.integer :price, null: false
      t.integer :quantity, null: false

      t.timestamps
    end

    add_index :line_items, [:sale_id, :product_id], unique: true
  end
end
