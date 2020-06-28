class CreateWareHouses < ActiveRecord::Migration[5.2]
  def change
    create_table :ware_houses do |t|
      t.string :wh_code
      t.string :name
      t.string :pincode
      t.integer :max_capacity

      t.timestamps
    end
  end
end
