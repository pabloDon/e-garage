require 'spec_helper'

describe "owners/edit" do
  before(:each) do
    @owner = assign(:owner, stub_model(Owner,
      :first_name => "MyString",
      :last_name => "MyString",
      :phone => "MyString",
      :mobile => "MyString",
      :address => "MyString"
    ))
  end

  it "renders the edit owner form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", owner_path(@owner), "post" do
      assert_select "input#owner_first_name[name=?]", "owner[first_name]"
      assert_select "input#owner_last_name[name=?]", "owner[last_name]"
      assert_select "input#owner_phone[name=?]", "owner[phone]"
      assert_select "input#owner_mobile[name=?]", "owner[mobile]"
      assert_select "input#owner_address[name=?]", "owner[address]"
    end
  end
end
