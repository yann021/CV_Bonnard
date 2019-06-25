require 'rails_helper'

RSpec.describe "homes/index", type: :view do
  before(:each) do
    assign(:homes, [
      Home.create!(
        :title => "Title",
        :website => "Website",
        :description => "MyText"
      ),
      Home.create!(
        :title => "Title",
        :website => "Website",
        :description => "MyText"
      )
    ])
  end

  it "renders a list of homes" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Website".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
