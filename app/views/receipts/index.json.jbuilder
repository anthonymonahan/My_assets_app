json.array!(@receipts) do |receipt|
  json.extract! receipt, :id, :details,  :image,
  json.url receipt_url(receipt, format: :json)
end
