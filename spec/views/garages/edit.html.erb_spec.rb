require 'spec_helper'

describe "garages/edit" do
  before(:each) do
    @garage = assign(:garage, stub_model(Garage,
      :name => "MyString",
      :phone => "MyString",
      :email => "MyString",
      :address => "MyString",
      :cif => "MyString"
    ))
  end

  it "renders the edit garage form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", garage_path(@garage), "post" do
      assert_select "input#garage_name[name=?]", "garage[name]"
      assert_select "input#garage_phone[name=?]", "garage[phone]"
      assert_select "input#garage_email[name=?]", "garage[email]"
      assert_select "input#garage_address[name=?]", "garage[address]"
      assert_select "input#garage_cif[name=?]", "garage[cif]"
    end
  end
end
