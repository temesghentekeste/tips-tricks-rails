class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.references :brand, null: false, foreign_key: true
      t.string :name
      t.decimal :price, precision: 5, scale: 2

      t.timestamps
    end
  end
end
