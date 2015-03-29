json.array!(@money_on_deposits) do |money_on_deposit|
  json.extract! money_on_deposit, :id, :institution, :amount, :account_number, :customer_id, :insurance_id,  :receipt_id,
  json.url money_on_deposit_url(money_on_deposit, format: :json)
end
