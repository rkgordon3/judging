require 'spec_helper'

describe "judges/index" do
  before(:each) do
    assign(:judges, [
      stub_model(Judge,
        :name => "Name",
        :event_id => 1
      ),
      stub_model(Judge,
        :name => "Name",
        :event_id => 1
      )
    ])
  end

  it "renders a list of judges" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
