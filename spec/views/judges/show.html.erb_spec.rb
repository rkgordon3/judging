require 'spec_helper'

describe "judges/show" do
  before(:each) do
    @judge = assign(:judge, stub_model(Judge,
      :name => "Name",
      :event_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/1/)
  end
end
