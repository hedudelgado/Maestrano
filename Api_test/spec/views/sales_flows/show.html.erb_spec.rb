require 'rails_helper'

RSpec.describe "sales_flows/show", type: :view do
  before(:each) do
    @sales_flow = assign(:sales_flow, SalesFlow.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
