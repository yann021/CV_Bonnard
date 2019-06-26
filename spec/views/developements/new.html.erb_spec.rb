require 'rails_helper'

RSpec.describe "developements/new", type: :view do
  before(:each) do
    assign(:developement, Developement.new(
      :title => "MyString",
      :developmentDate => "MyString",
      :website => "MyString",
      :description => "MyText",
      :type => 1
    ))
  end

  it "renders new developement form" do
    render

    assert_select "form[action=?][method=?]", developements_path, "post" do

      assert_select "input[name=?]", "developement[title]"

      assert_select "input[name=?]", "developement[developmentDate]"

      assert_select "input[name=?]", "developement[website]"

      assert_select "textarea[name=?]", "developement[description]"

      assert_select "input[name=?]", "developement[type]"
    end
  end
end
