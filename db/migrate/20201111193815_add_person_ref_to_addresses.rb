class AddPersonRefToAddresses < ActiveRecord::Migration[6.0]
  def change
    add_reference :addresses, :person, null: false, foreign_key: true
  end
end
