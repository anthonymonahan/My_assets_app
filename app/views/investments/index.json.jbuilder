json.array!(@investments) do |investment|
  json.extract! investment, :id, :type_of_investment, :value, :customer_id,  :insurance_id,  :receipt_id,
  json.url investment_url(investment, format: :json)
end
