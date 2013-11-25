require 'spec_helper'

describe "entries/new" do
  before(:each) do
    assign(:entry, stub_model(Entry,
      :owner_id => 1,
      :car_id => 1,
      :status_id => 1,
      :comments => "MyText",
      :hours => 1
    ).as_new_record)
  end

  it "renders new entry form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", entries_path, "post" do
      assert_select "input#entry_owner_id[name=?]", "entry[owner_id]"
      assert_select "input#entry_car_id[name=?]", "entry[car_id]"
      assert_select "input#entry_status_id[name=?]", "entry[status_id]"
      assert_select "textarea#entry_comments[name=?]", "entry[comments]"
      assert_select "input#entry_hours[name=?]", "entry[hours]"
    end
  end
end
