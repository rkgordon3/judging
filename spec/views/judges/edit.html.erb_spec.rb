require 'spec_helper'

describe "judges/edit" do
  before(:each) do
    @judge = assign(:judge, stub_model(Judge,
      :name => "MyString",
      :event_id => 1
    ))
  end

  it "renders the edit judge form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", judge_path(@judge), "post" do
      assert_select "input#judge_name[name=?]", "judge[name]"
      assert_select "input#judge_event_id[name=?]", "judge[event_id]"
    end
  end
end
