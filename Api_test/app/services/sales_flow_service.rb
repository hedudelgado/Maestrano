require 'urls_http_requests.rb'
include SerializeSalesFlowLocation

def call_sales_flow_api
	auth = {:username=>ENV["USERNAME"], :password=>ENV["PASSWORD"]}
  sales_flow = HTTParty.get(url_sales_flow, :basic_auth => auth)    
  serialize_sales_flow_location(sales_flow) 
end


