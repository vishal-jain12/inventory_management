# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

def assign_random_product_count(warehouse_name, threshold, index)
  case warehouse_name
  when 'Mumbai'
    value = rand(threshold..100)
  when 'New Delhi'
    if (index < 30)
      threshold -= 1
      value = rand(1..threshold)
    else
      value = rand(threshold..100)
    end
  when 'Bangalore'
    if (index < 20)
      threshold -= 1
      value = rand(1..threshold)
    else
      value = rand(threshold..100)
    end
  end
  return value
end

warehouses = WareHouse.create([{wh_code: 'WH_MUM', name: 'Mumbai', pincode: 400001, max_capacity: 10000}, {wh_code: 'WH_DEL', name: 'New Delhi', pincode: 100001, max_capacity: 15000}, {wh_code: 'WH_BNG', name: 'Bangalore', pincode: 300001, max_capacity: 11000}])

products = Product.create([{sku_code: '1234_col', name: 'Colgate-1', price: 89}, {sku_code: '1234_pep', name: 'Pepsodent-1', price: 150}, {sku_code: '1234_sen', name: 'Sensodyne-1', price: 280}, {sku_code: '1234_dab', name: 'Dabur Red-1', price: 75}, {sku_code: '1234_lux', name: 'Lux-1', price: 28}, {sku_code: '1234_vim', name: 'Vim-1', price: 10}, {sku_code: '1234_dov', name: 'Dove-1', price: 45}, {sku_code: '12_pears', name: 'Pears-1', price: 75}, {sku_code: '1_lifeby', name: 'Lifebuoy-1', price: 15}, {sku_code: '123_oral', name: 'Oral-B-1', price: 142}, {sku_code: '2345_col', name: 'Colgate-2', price: 89}, {sku_code: '2345_pep', name: 'Pepsodent-2', price: 150}, {sku_code: '2345_sen', name: 'Sensodyne-2', price: 280}, {sku_code: '2345_dab', name: 'Dabur Red-2', price: 75}, {sku_code: '2345_lux', name: 'Lux-2', price: 28}, {sku_code: '2345_vim', name: 'Vim-2', price: 10}, {sku_code: '2345_dov', name: 'Dove-2', price: 45}, {sku_code: '23_pears', name: 'Pears-2', price: 75}, {sku_code: '2_lifeby', name: 'Lifebuoy-2', price: 15}, {sku_code: '234_oral', name: 'Oral-B-2', price: 142}, {sku_code: '3456_col', name: 'Colgate-3', price: 89}, {sku_code: '3456_pep', name: 'Pepsodent-3', price: 150}, {sku_code: '3456_sen', name: 'Sensodyne-3', price: 280}, {sku_code: '3456_dab', name: 'Dabur Red-3', price: 75}, {sku_code: '3456_lux', name: 'Lux-3', price: 28}, {sku_code: '3456_vim', name: 'Vim-3', price: 10}, {sku_code: '3456_dov', name: 'Dove-3', price: 45}, {sku_code: '34_pears', name: 'Pears-3', price: 75}, {sku_code: '3_lifeby', name: 'Lifebuoy-3', price: 15}, {sku_code: '345_oral', name: 'Oral-B-3', price: 142}, {sku_code: '4567_col', name: 'Colgate-4', price: 89}, {sku_code: '4567_pep', name: 'Pepsodent-4', price: 150}, {sku_code: '4567_sen', name: 'Sensodyne-4', price: 280}, {sku_code: '4567_dab', name: 'Dabur Red-4', price: 75}, {sku_code: '4567_lux', name: 'Lux-4', price: 28}, {sku_code: '4567_vim', name: 'Vim-4', price: 10}, {sku_code: '4567_dov', name: 'Dove-4', price: 45}, {sku_code: '45_pears', name: 'Pears-4', price: 75}, {sku_code: '4_lifeby', name: 'Lifebuoy-4', price: 15}, {sku_code: '456_oral', name: 'Oral-B-4', price: 142}, {sku_code: '5678_col', name: 'Colgate-5', price: 89}, {sku_code: '5678_pep', name: 'Pepsodent-5', price: 150}, {sku_code: '5678_sen', name: 'Sensodyne-5', price: 280}, {sku_code: '5678_dab', name: 'Dabur Red-5', price: 75}, {sku_code: '5678_lux', name: 'Lux-5', price: 28}, {sku_code: '5678_vim', name: 'Vim-5', price: 10}, {sku_code: '5678_dov', name: 'Dove-5', price: 45}, {sku_code: '56_pears', name: 'Pears-5', price: 75}, {sku_code: '5_lifeby', name: 'Lifebuoy-5', price: 15}, {sku_code: '567_oral', name: 'Oral-B-5', price: 142}, {sku_code: '6789_col', name: 'Colgate-6', price: 89}, {sku_code: '6789_pep', name: 'Pepsodent-6', price: 150}, {sku_code: '6789_sen', name: 'Sensodyne-6', price: 280}, {sku_code: '6789_dab', name: 'Dabur Red-6', price: 75}, {sku_code: '6789_lux', name: 'Lux-6', price: 28}, {sku_code: '6789_vim', name: 'Vim-6', price: 10}, {sku_code: '6789_dov', name: 'Dove-6', price: 45}, {sku_code: '67_pears', name: 'Pears-6', price: 75}, {sku_code: '6_lifeby', name: 'Lifebuoy-6', price: 15}, {sku_code: '678_oral', name: 'Oral-B-6', price: 142}])

warehouses.each do |warehouse|
  name = warehouse.name
  products.each_with_index do |product, index|
    puts "Adding Product #{index + 1} to #{warehouse.name}"
    threshold = rand(5..10)
    value = assign_random_product_count(name, threshold, index)
    WareHouseProduct.create!(product_id: product.id, ware_house_id: warehouse.id, item_count: value, low_item_threshold: threshold)
  end
end