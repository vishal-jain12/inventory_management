class WareHouse < ApplicationRecord
  has_many :ware_house_products
  has_many :products, through: :ware_house_products

  validates :wh_code, presence: true, uniqueness: true, length: { minimum: 4, maximum: 16 }
  validates :pincode, presence: true, length: { minimum: 5, maximum: 6 }, format: { with: /[0-9]+/ }
  validates_presence_of :name, :max_capacity

  after_save :save_ware_house_products

  def save_ware_house_products
    @products = Product.all
    @products.each do |product|
      product.ware_house_products.create!(ware_house_id: self.id)
    end
  end
end
