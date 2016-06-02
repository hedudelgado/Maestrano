class SalesFlowsController < ApplicationController

  # GET /sales_flows
  # GET /sales_flows.json
  def index
    begin
      apiCall = ApiCalls.new
      @top_sales = apiCall.call_sales_flow_api
    rescue => ex
     render :json => {"service unavailable": "0001" }, :status => :service_unavailable
    end
  end
end
