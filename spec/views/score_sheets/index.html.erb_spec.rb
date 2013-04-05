require 'spec_helper'

describe "score_sheets/index" do
  before(:each) do
    assign(:score_sheets, [
      stub_model(ScoreSheet,
        :event_id => 1,
        :judge_id => 2
      ),
      stub_model(ScoreSheet,
        :event_id => 1,
        :judge_id => 2
      )
    ])
  end

  it "renders a list of score_sheets" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
