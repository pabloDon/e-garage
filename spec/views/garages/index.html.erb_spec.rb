require 'spec_helper'

describe "garages/index" do
  before(:each) do
    assign(:garages, [
      stub_model(Garage,
        :name => "Name",
        :phone => "Phone",
        :email => "Email",
        :address => "Address",
        :cif => "Cif"
      ),
      stub_model(Garage,
        :name => "Name",
        :phone => "Phone",
        :email => "Email",
        :address => "Address",
        :cif => "Cif"
      )
    ])
  end

  it "renders a list of garages" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    assert_select "tr>td", :text => "Cif".to_s, :count => 2
  end
end
