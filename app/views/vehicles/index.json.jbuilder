json.array!(@vehicles) do |vehicle|
  json.extract! vehicle, :id;  :make ; :model  ;:year; :reg; :value;  :customer_id;  :insurance_id;  :receipt_id;s
  json.url vehicle_url(vehicle, format: :json)
end
