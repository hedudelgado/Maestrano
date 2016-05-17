require 'sales_flow_service.rb'

class SalesFlowsController < ApplicationController
  before_action :set_sales_flow, only: [:show, :edit, :update, :destroy]

  # GET /sales_flows
  # GET /sales_flows.json
  def index
    begin
      call_sales_flow_api 
    rescue => ex
     render :json => "{\"code\": \"0001\" }", :status => :service_unavailable
    end
  end
end
