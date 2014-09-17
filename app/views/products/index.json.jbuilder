json.array!(@products) do |product|
  json.extract! product, :id, :name, :price, :quantity, :product_category, :description, :retailer_id
  json.url product_url(product, format: :json)
end
