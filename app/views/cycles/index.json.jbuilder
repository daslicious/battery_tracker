json.array!(@cycles) do |cycle|
  json.extract! cycle, :id, :battery_id, :device_id
  json.url cycle_url(cycle, format: :json)
end
