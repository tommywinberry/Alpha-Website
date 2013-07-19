require 'spec_helper'

describe "prayer_followups/show" do
  before(:each) do
    @prayer_followup = assign(:prayer_followup, stub_model(PrayerFollowup,
      :prayer_id => 1,
      :content => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/MyText/)
  end
end
