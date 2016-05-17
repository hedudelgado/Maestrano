require 'urls_http_requests.rb'
require 'top_sales_location_selector.rb'
require 'sale.rb'

def call_sales_flow_api
	auth = {:username=>ENV["USERNAME"], :password=>ENV["PASSWORD"]}
  sales_flow = HTTParty.get(url_sales_flow, :basic_auth => auth)    
  serialize_sales_flow_location(sales_flow) 
end


def serialize_sales_flow_location(sales_flow)
  @sales_location = []
 	sales_flow["content"]["customers"].each do |sales|

    @sales_location.push(Sale.new(sales["name"],sales["country"],sales["city"],sales["total_invoiced"]))
  end
  top_sales_location_selector(@sales_location)
end	