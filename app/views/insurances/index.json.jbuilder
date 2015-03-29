json.array!(@insurances) do |insurance|
  json.extract! insurance, :id,  :company, :policy_number,  :website,  :phone,  :renewal_date,
  json.url insurance_url(insurance, format: :json)
end
