json.array!(@posts) do |post|
  json.extract! post, :id, :symbol, :price
  json.url post_url(post, format: :json)
end
