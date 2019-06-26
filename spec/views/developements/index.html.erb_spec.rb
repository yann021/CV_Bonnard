require 'rails_helper'

RSpec.describe "developements/index", type: :view do
  before(:each) do
    assign(:developements, [
      Developement.create!(
        :title => "Title",
        :developmentDate => "Development Date",
        :website => "Website",
        :description => "MyText",
        :type => 2
      ),
      Developement.create!(
        :title => "Title",
        :developmentDate => "Development Date",
        :website => "Website",
        :description => "MyText",
        :type => 2
      )
    ])
  end

  it "renders a list of developements" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Development Date".to_s, :count => 2
    assert_select "tr>td", :text => "Website".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
