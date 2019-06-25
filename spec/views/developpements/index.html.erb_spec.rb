require 'rails_helper'

RSpec.describe "developpements/index", type: :view do
  before(:each) do
    assign(:developpements, [
      Developpement.create!(
        :title => "Title",
        :developmentDate => "Development Date",
        :website => "Website",
        :description => "MyText",
        :type => 2
      ),
      Developpement.create!(
        :title => "Title",
        :developmentDate => "Development Date",
        :website => "Website",
        :description => "MyText",
        :type => 2
      )
    ])
  end

  it "renders a list of developpements" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Development Date".to_s, :count => 2
    assert_select "tr>td", :text => "Website".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
