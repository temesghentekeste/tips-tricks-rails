class AddCityRefToUsers < ActiveRecord::Migration[6.0]
  def change
    add_reference :users, :city, null: false, foreign_key: true
  end
end
