require 'spec_helper'

describe "entries/edit" do
  before(:each) do
    @entry = assign(:entry, stub_model(Entry,
      :owner_id => 1,
      :car_id => 1,
      :status_id => 1,
      :comments => "MyText",
      :hours => 1
    ))
  end

  it "renders the edit entry form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", entry_path(@entry), "post" do
      assert_select "input#entry_owner_id[name=?]", "entry[owner_id]"
      assert_select "input#entry_car_id[name=?]", "entry[car_id]"
      assert_select "input#entry_status_id[name=?]", "entry[status_id]"
      assert_select "textarea#entry_comments[name=?]", "entry[comments]"
      assert_select "input#entry_hours[name=?]", "entry[hours]"
    end
  end
end
