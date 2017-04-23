#exercise7.rb

a = 2
b = [5, 8]

arr = [a, b]

# => arr = [2, [5, 8]]

arr[0] += 2

# => 4

arr[1][0] -= a

# => 1

# arr = [4, [3, 8]]
# a => 2
# b => [3, 8]

(5..10).reduce(0, :*)  

customer_orders = [
  {
    customer_id: 12,
    customer_name: 'Emma Lopez',
    orders: [
      { order_fulfilled: true, order_value: 135.99 },
      { order_fulfilled: true, order_value: 289.49 },
      { order_fulfilled: false, order_value: 58.00 }
    ]
  },
  {
    customer_id: 32,
    customer_name: 'Michael Richards',
    orders: [
      { order_fulfilled: true, order_value: 120.00 },
      { order_fulfilled: false, order_value: 85.65 }
    ]
  },
  # rest of data...
]

