class CreateAddresses < ActiveRecord::Migration[6.0]
  def change
    create_table :addresses do |t|
      t.string :kind
      t.string :street

      t.timestamps
    end
  end
end
