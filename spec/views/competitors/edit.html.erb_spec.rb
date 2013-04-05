require 'spec_helper'

describe "competitors/edit" do
  before(:each) do
    @competitor = assign(:competitor, stub_model(Competitor,
      :name => "MyString",
      :event_id => 1,
      :score => 1
    ))
  end

  it "renders the edit competitor form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", competitor_path(@competitor), "post" do
      assert_select "input#competitor_name[name=?]", "competitor[name]"
      assert_select "input#competitor_event_id[name=?]", "competitor[event_id]"
      assert_select "input#competitor_score[name=?]", "competitor[score]"
    end
  end
end
