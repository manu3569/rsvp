require 'spec_helper'

describe "events/index" do
  before(:each) do
    assign(:events, [
      stub_model(Event,
        :title => "Title",
        :description => "MyText",
        :user => stub_model(User, "John")
      ),
      stub_model(Event,
        :title => "Title",
        :description => "MyText",
        :user => stub_model(User, "John2")
      )
    ])
  end

  it "renders a list of events" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title", :count => 2
    assert_select "tr>td", :text => "MyText", :count => 2
    assert_select "tr>td", :text => "John", :count => 2
  end
end
