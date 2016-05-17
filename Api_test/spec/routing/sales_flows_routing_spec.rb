require "rails_helper"

RSpec.describe SalesFlowsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/sales_flows").to route_to("sales_flows#index")
    end
  end
end
