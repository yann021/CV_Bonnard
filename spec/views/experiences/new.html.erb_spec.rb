require 'rails_helper'

RSpec.describe "experiences/new", type: :view do
  before(:each) do
    assign(:experience, Experience.new(
      :businessName => "MyString",
      :work => "MyString",
      :date => "MyString",
      :website => "MyString",
      :description => "MyText"
    ))
  end

  it "renders new experience form" do
    render

    assert_select "form[action=?][method=?]", experiences_path, "post" do

      assert_select "input[name=?]", "experience[businessName]"

      assert_select "input[name=?]", "experience[work]"

      assert_select "input[name=?]", "experience[date]"

      assert_select "input[name=?]", "experience[website]"

      assert_select "textarea[name=?]", "experience[description]"
    end
  end
end
