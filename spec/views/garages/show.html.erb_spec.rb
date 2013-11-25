require 'spec_helper'

describe "garages/show" do
  before(:each) do
    @garage = assign(:garage, stub_model(Garage,
      :name => "Name",
      :phone => "Phone",
      :email => "Email",
      :address => "Address",
      :cif => "Cif"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Phone/)
    rendered.should match(/Email/)
    rendered.should match(/Address/)
    rendered.should match(/Cif/)
  end
end
