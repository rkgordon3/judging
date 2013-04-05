require 'spec_helper'

describe "score_sheets/show" do
  before(:each) do
    @score_sheet = assign(:score_sheet, stub_model(ScoreSheet,
      :event_id => 1,
      :judge_id => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
  end
end
