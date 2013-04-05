require 'spec_helper'

describe "evaluations/edit" do
  before(:each) do
    @evaluation = assign(:evaluation, stub_model(Evaluation,
      :score => 1,
      :score_sheet_id => 1,
      :question_id => 1
    ))
  end

  it "renders the edit evaluation form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", evaluation_path(@evaluation), "post" do
      assert_select "input#evaluation_score[name=?]", "evaluation[score]"
      assert_select "input#evaluation_score_sheet_id[name=?]", "evaluation[score_sheet_id]"
      assert_select "input#evaluation_question_id[name=?]", "evaluation[question_id]"
    end
  end
end
