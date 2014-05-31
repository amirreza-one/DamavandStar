json.array!(@brands) do |brand|
  json.extract! brand, :id, :name, :country, :summary
  json.url brand_url(brand, format: :json)
end
