require 'spec_helper'

describe "competitors/show" do
  before(:each) do
    @competitor = assign(:competitor, stub_model(Competitor,
      :name => "Name",
      :event_id => 1,
      :score => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/1/)
    rendered.should match(/2/)
  end
end
