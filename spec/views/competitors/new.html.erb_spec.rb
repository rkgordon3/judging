require 'spec_helper'

describe "competitors/new" do
  before(:each) do
    assign(:competitor, stub_model(Competitor,
      :name => "MyString",
      :event_id => 1,
      :score => 1
    ).as_new_record)
  end

  it "renders new competitor form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", competitors_path, "post" do
      assert_select "input#competitor_name[name=?]", "competitor[name]"
      assert_select "input#competitor_event_id[name=?]", "competitor[event_id]"
      assert_select "input#competitor_score[name=?]", "competitor[score]"
    end
  end
end
