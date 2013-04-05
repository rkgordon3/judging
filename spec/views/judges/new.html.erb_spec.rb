require 'spec_helper'

describe "judges/new" do
  before(:each) do
    assign(:judge, stub_model(Judge,
      :name => "MyString",
      :event_id => 1
    ).as_new_record)
  end

  it "renders new judge form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", judges_path, "post" do
      assert_select "input#judge_name[name=?]", "judge[name]"
      assert_select "input#judge_event_id[name=?]", "judge[event_id]"
    end
  end
end
