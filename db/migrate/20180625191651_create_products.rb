class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name, null: false
      t.integer :price, null: false

      t.timestamps
    end

    add_index :products, :name, unique: true
  end
end
