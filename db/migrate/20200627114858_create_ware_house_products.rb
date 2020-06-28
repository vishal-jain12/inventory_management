class CreateWareHouseProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :ware_house_products do |t|
      t.integer :item_count, default: 0
      t.integer :low_item_threshold, default: 10
      t.references :product, foreign_key: true
      t.references :ware_house, foreign_key: true

      t.timestamps
    end
  end
end
