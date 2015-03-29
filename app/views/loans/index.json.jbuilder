json.array!(@loans) do |loan|
  json.extract! loan, :id, :institution,  :account_number,  :amount,  :customer_id,  :insurance_id, :receipt_id,
  json.url loan_url(loan, format: :json)
end
