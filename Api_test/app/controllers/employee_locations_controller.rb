require 'json'
require 'employee_locations_services.rb'
class EmployeeLocationsController < ApplicationController
  before_action :set_employee_location, only: [:show, :edit, :update, :destroy]

  # GET /call_employee_work_locations_api
  # GET /employee_locations.json
  def index
    begin
      call_employee_work_locations_api
    rescue => ex
      render :json => {"service unavailable": "0001" }, :status => :service_unavailable
    end 
  end
end