json.extract! line_item, :id, :sale_id, :product_id, :price_id, :quantity_id, :created_at, :updated_at
json.url line_item_url(line_item, format: :json)
