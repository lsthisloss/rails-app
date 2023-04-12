json.extract! orders_description, :id, :item_id, :order_id, :quantity, :created_at, :updated_at
json.url orders_description_url(orders_description, format: :json)
