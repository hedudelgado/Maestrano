
class EmployeeLocationsController < ApplicationController 
  before_filter :authenticate_user!
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