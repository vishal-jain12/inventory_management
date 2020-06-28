class WareHouseProduct < ApplicationRecord
  belongs_to :product
  belongs_to :ware_house

  validates_presence_of :product
  validates_presence_of :ware_house
end
