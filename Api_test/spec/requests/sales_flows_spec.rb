require 'rails_helper'

RSpec.describe "SalesFlows", type: :request do
  describe "GET /sales_flows" do
    it "works! (now write some real specs)" do
      get sales_flows_path
      expect(response).to have_http_status(200)
    end
  end
end
