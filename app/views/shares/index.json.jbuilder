json.array!(@shares) do |share|
  json.extract! share, :id,  :name_of_share,  :symbol, :original_value,  :customer_id,  :insurance_id,  :receipt_id,
  json.url share_url(share, format: :json)
end
