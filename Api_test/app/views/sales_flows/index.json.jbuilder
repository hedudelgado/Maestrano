json.array!(@top_sales) do |top_sale|
  json.extract! top_sale, :name, :sales
end

