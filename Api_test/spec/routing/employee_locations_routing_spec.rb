require "rails_helper"

RSpec.describe EmployeeLocationsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/employee_locations").to route_to("employee_locations#index")
    end
  end
end
