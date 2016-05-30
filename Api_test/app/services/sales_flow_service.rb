require 'top_sales_location_selector.rb'
require 'serialize_sales_flow_location.rb'

def call_sales_flow_api

	auth = {:username=>ENV["USERNAME"], :password=>ENV["PASSWORD"]}
  sales_flow = HTTParty.get(Settings.url_sales_flow, :basic_auth => auth)    
  p 'aaaaaaaaaaaaa'
  p sales_flow
  #p'-----------------'
  serialize_sales_flow_location(sales_flow) 
end


