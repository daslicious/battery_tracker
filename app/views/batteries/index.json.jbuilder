json.array!(@batteries) do |battery|
  json.extract! battery, :id, :size, :technology, :brand
  json.url battery_url(battery, format: :json)
end
