json.extract! order_detail, :id, :menu_id, :order_id, :unit_priceces, :unit_price, :quantity, :created_at, :updated_at
json.url order_detail_url(order_detail, format: :json)
