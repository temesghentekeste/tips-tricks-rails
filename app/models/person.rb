class Person < ApplicationRecord
  has_many :addresses, inverse_of: :person, dependent: :destroy
  accepts_nested_attributes_for :addresses, allow_destroy: true
end
