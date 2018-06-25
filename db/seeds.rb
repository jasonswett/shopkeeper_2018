land_boat = Product.create!(
  name: 'Land Boat',
  price: 75000000
)

hot_tub_bike = Product.create!(
  name: 'Hot Tub Bike',
  price: 200000
)

disposable_single_use_grand_piano = Product.create!(
  name: 'Disposable Single-Use Grand Piano',
  price: 5500000
)

edible_shoes = Product.create!(
  name: 'Edible Shoes',
  price: 3500
)

wifi_enabled_thimble = Product.create!(
  name: 'Wifi-Enabled Thimble',
  price: 4500
)

InventoryAdjustment.create!([
  {
    product: land_boat,
    quantity: 8
  },
  {
    product: hot_tub_bike,
    quantity: 28
  },
  {
    product: disposable_single_use_grand_piano,
    quantity: 100
  },
  {
    product: edible_shoes,
    quantity: 43
  },
  {
    product: wifi_enabled_thimble,
    quantity: 70
  },
])
