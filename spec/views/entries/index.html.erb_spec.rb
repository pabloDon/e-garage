require 'spec_helper'

describe "entries/index" do
  before(:each) do
    assign(:entries, [
      stub_model(Entry,
        :owner_id => 1,
        :car_id => 2,
        :status_id => 3,
        :comments => "MyText",
        :hours => 4
      ),
      stub_model(Entry,
        :owner_id => 1,
        :car_id => 2,
        :status_id => 3,
        :comments => "MyText",
        :hours => 4
      )
    ])
  end

  it "renders a list of entries" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
  end
end
