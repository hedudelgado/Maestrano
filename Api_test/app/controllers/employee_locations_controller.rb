require 'json'

class EmployeeLocationsController < ApplicationController 
 before_action :authenticate_user!
  #before_filter :login_required, :only => [:method1,:method2]
  #before_filter :authenticate_user!, except: [:new, :create]
  #before_action :set_employee_location, only: [:show, :edit, :update, :destroy]
  #before_action :authenticate, except: [ :index ]
  # GET /call_employee_work_locations_api
  # GET /employee_locations.json
  def index
    begin
      apiCall = ApiCalls.new
      @top_locations = apiCall.call_employee_work_locations_api
    rescue => ex
      render :json => {"service unavailable": "0001" }, :status => :service_unavailable
    end 

  end
end