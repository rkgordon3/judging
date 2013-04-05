require 'spec_helper'

describe "results/new" do
  before(:each) do
    assign(:result, stub_model(Result,
      :question_id => 1,
      :score => 1
    ).as_new_record)
  end

  it "renders new result form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", results_path, "post" do
      assert_select "input#result_question_id[name=?]", "result[question_id]"
      assert_select "input#result_score[name=?]", "result[score]"
    end
  end
end
