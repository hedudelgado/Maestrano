require "rails_helper"

RSpec.describe SalesFlowsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/sales_flows").to route_to("sales_flows#index")
    end

    it "routes to #new" do
      expect(:get => "/sales_flows/new").to route_to("sales_flows#new")
    end

    it "routes to #show" do
      expect(:get => "/sales_flows/1").to route_to("sales_flows#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/sales_flows/1/edit").to route_to("sales_flows#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/sales_flows").to route_to("sales_flows#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/sales_flows/1").to route_to("sales_flows#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/sales_flows/1").to route_to("sales_flows#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/sales_flows/1").to route_to("sales_flows#destroy", :id => "1")
    end

  end
end
