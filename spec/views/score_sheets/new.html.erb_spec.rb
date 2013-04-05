require 'spec_helper'

describe "score_sheets/new" do
  before(:each) do
    assign(:score_sheet, stub_model(ScoreSheet,
      :event_id => 1,
      :judge_id => 1
    ).as_new_record)
  end

  it "renders new score_sheet form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", score_sheets_path, "post" do
      assert_select "input#score_sheet_event_id[name=?]", "score_sheet[event_id]"
      assert_select "input#score_sheet_judge_id[name=?]", "score_sheet[judge_id]"
    end
  end
end
