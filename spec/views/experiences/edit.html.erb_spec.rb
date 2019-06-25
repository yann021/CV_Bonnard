require 'rails_helper'

RSpec.describe "experiences/edit", type: :view do
  before(:each) do
    @experience = assign(:experience, Experience.create!(
      :businessName => "MyString",
      :work => "MyString",
      :date => "MyString",
      :website => "MyString",
      :description => "MyText"
    ))
  end

  it "renders the edit experience form" do
    render

    assert_select "form[action=?][method=?]", experience_path(@experience), "post" do

      assert_select "input[name=?]", "experience[businessName]"

      assert_select "input[name=?]", "experience[work]"

      assert_select "input[name=?]", "experience[date]"

      assert_select "input[name=?]", "experience[website]"

      assert_select "textarea[name=?]", "experience[description]"
    end
  end
end
