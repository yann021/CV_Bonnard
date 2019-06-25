require 'rails_helper'

RSpec.describe "experiences/index", type: :view do
  before(:each) do
    assign(:experiences, [
      Experience.create!(
        :businessName => "Business Name",
        :work => "Work",
        :date => "Date",
        :website => "Website",
        :description => "MyText"
      ),
      Experience.create!(
        :businessName => "Business Name",
        :work => "Work",
        :date => "Date",
        :website => "Website",
        :description => "MyText"
      )
    ])
  end

  it "renders a list of experiences" do
    render
    assert_select "tr>td", :text => "Business Name".to_s, :count => 2
    assert_select "tr>td", :text => "Work".to_s, :count => 2
    assert_select "tr>td", :text => "Date".to_s, :count => 2
    assert_select "tr>td", :text => "Website".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
