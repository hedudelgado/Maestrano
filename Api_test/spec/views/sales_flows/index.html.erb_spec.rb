require 'rails_helper'

RSpec.describe "sales_flows/index", type: :view do
  before(:each) do
    assign(:sales_flows, [
      SalesFlow.create!(),
      SalesFlow.create!()
    ])
  end

  it "renders a list of sales_flows" do
    render
  end
end
