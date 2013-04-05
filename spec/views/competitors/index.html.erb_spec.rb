require 'spec_helper'

describe "competitors/index" do
  before(:each) do
    assign(:competitors, [
      stub_model(Competitor,
        :name => "Name",
        :event_id => 1,
        :score => 2
      ),
      stub_model(Competitor,
        :name => "Name",
        :event_id => 1,
        :score => 2
      )
    ])
  end

  it "renders a list of competitors" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
