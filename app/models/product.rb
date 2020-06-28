class Product < ApplicationRecord
  has_many :ware_house_products
  has_many :ware_houses, through: :ware_house_products

  validates :sku_code, presence: true, uniqueness: true, length: { minimum: 8, maximum: 8 }
  validates_presence_of :name, :price

  accepts_nested_attributes_for :ware_house_products
end
