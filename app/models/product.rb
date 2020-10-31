class Product < ApplicationRecord
  belongs_to :brand

  scope :expensive_products, -> { where(price: 50.01..Float::INFINITY).order(price: :desc)}
  # Ex:- scope :active, -> {where(:active => true)}
  def self.cheap_products
    where(price: 0..50).order(price: :asc)
  end
end
