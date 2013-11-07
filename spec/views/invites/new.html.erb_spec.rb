require 'spec_helper'

describe "invites/new" do
  before(:each) do
    assign(:invite, stub_model(Invite,
      :user => nil,
      :event => nil
    ).as_new_record)
  end

  it "renders new invite form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", invites_path, "post" do
      assert_select "input#invite_user[name=?]", "invite[user]"
      assert_select "input#invite_event[name=?]", "invite[event]"
    end
  end
end
