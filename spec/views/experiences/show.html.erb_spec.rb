require 'rails_helper'

RSpec.describe "experiences/show", type: :view do
  before(:each) do
    @experience = assign(:experience, Experience.create!(
      :businessName => "Business Name",
      :work => "Work",
      :date => "Date",
      :website => "Website",
      :description => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Business Name/)
    expect(rendered).to match(/Work/)
    expect(rendered).to match(/Date/)
    expect(rendered).to match(/Website/)
    expect(rendered).to match(/MyText/)
  end
end
