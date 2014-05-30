json.array!(@tires) do |tire|
  json.extract! tire, :id, :brand, :size, :tire_type, :pattern, :year, :week, :summary, :price
  json.url tire_url(tire, format: :json)
end
