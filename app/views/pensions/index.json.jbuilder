json.array!(@pensions) do |pension|
  json.extract! pension, :id, :company, :address, :maturity_date, :original_value,  :expected_value_at_maturity, :customer_id,  :insurance_id,  :receipt_id,
  json.url pension_url(pension, format: :json)
end
