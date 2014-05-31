json.array!(@patterns) do |pattern|
  json.extract! pattern, :id, :brand_id, :summary
  json.url pattern_url(pattern, format: :json)
end
