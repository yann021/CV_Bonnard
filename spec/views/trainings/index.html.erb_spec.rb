require 'rails_helper'

RSpec.describe "trainings/index", type: :view do
  before(:each) do
    assign(:trainings, [
      Training.create!(
        :title => "Title",
        :trainingCenter => "Training Center",
        :date => "Date",
        :website => "Website",
        :description => "MyText"
      ),
      Training.create!(
        :title => "Title",
        :trainingCenter => "Training Center",
        :date => "Date",
        :website => "Website",
        :description => "MyText"
      )
    ])
  end

  it "renders a list of trainings" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Training Center".to_s, :count => 2
    assert_select "tr>td", :text => "Date".to_s, :count => 2
    assert_select "tr>td", :text => "Website".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
