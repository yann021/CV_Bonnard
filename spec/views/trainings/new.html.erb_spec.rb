require 'rails_helper'

RSpec.describe "trainings/new", type: :view do
  before(:each) do
    assign(:training, Training.new(
      :title => "MyString",
      :trainingCenter => "MyString",
      :date => "MyString",
      :website => "MyString",
      :description => "MyText"
    ))
  end

  it "renders new training form" do
    render

    assert_select "form[action=?][method=?]", trainings_path, "post" do

      assert_select "input[name=?]", "training[title]"

      assert_select "input[name=?]", "training[trainingCenter]"

      assert_select "input[name=?]", "training[date]"

      assert_select "input[name=?]", "training[website]"

      assert_select "textarea[name=?]", "training[description]"
    end
  end
end
