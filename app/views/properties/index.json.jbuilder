json.array!(@properties) do |property|
  json.extract! property, :id, :address, :original_value, :customer_id, :insurance_id,  :receipt_id,
  json.url property_url(property, format: :json)
end
