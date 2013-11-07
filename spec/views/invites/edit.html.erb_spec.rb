require 'spec_helper'

describe "invites/edit" do
  before(:each) do
    @invite = assign(:invite, stub_model(Invite,
      :user => nil,
      :event => nil
    ))
  end

  it "renders the edit invite form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", invite_path(@invite), "post" do
      assert_select "input#invite_user[name=?]", "invite[user]"
      assert_select "input#invite_event[name=?]", "invite[event]"
    end
  end
end
