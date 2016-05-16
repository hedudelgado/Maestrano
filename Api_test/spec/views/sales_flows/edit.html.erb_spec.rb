require 'rails_helper'

RSpec.describe "sales_flows/edit", type: :view do
  before(:each) do
    @sales_flow = assign(:sales_flow, SalesFlow.create!())
  end

  it "renders the edit sales_flow form" do
    render

    assert_select "form[action=?][method=?]", sales_flow_path(@sales_flow), "post" do
    end
  end
end
