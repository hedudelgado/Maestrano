require 'rails_helper'

RSpec.describe "sales_flows/new", type: :view do
  before(:each) do
    assign(:sales_flow, SalesFlow.new())
  end

  it "renders new sales_flow form" do
    render

    assert_select "form[action=?][method=?]", sales_flows_path, "post" do
    end
  end
end
