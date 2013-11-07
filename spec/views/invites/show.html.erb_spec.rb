require 'spec_helper'

describe "invites/show" do
  before(:each) do
    @invite = assign(:invite, stub_model(Invite,
      :user => nil,
      :event => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    rendered.should match(//)
  end
end
