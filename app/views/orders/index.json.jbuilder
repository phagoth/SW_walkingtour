json.array!(@orders) do |order|
  json.extract! order, :id, :house_id, :user_id, :total
  json.url order_url(order, format: :json)
end
