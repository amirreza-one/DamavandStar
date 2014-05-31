json.array!(@tires) do |tire|
  json.extract! tire, :id, :brand_id, :size, :tire_type, :pattern_id, :year, :week, :summary, :price
  json.url tire_url(tire, format: :json)
end
