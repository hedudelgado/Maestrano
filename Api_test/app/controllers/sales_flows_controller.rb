class SalesFlowsController < ApplicationController
    #before_filter :authenticate_user!, except: [:new, :create]
  #before_filter :authenticate_user!, except: [:new, :create]
 #before_filter :login_required, :only => [:method1,:method2]
#before_filter :authenticate_user! 
 before_action :authenticate_user!
#  before_action :set_sales_flow, only: [:show, :edit, :update, :destroy]
#before_filter :login_required, :only => [:method1,:method2]
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
