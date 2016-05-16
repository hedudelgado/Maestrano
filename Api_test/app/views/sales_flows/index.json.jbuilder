json.array!(@sales_location) do |sales_flow|
  json.extract! sales_flow, :name, :sales
  json.url sales_flow_url(sales_flow, format: :json)
end

