json.array!(@customers) do |customer|
  json.extract! customer, :id, :CustomerName, :email, :password, :address
  json.url customer_url(customer, format: :json)
end
