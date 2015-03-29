json.array!(@miscs) do |misc|
  json.extract! misc, :id, :name,  :serial_no,  :value,  :image,  :customer_id,  :insurance_id,  :receipt_id,
  json.url misc_url(misc, format: :json)
end
