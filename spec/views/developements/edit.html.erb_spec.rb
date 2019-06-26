require 'rails_helper'

RSpec.describe "developements/edit", type: :view do
  before(:each) do
    @developement = assign(:developement, Developement.create!(
      :title => "MyString",
      :developmentDate => "MyString",
      :website => "MyString",
      :description => "MyText",
      :type => 1
    ))
  end

  it "renders the edit developement form" do
    render

    assert_select "form[action=?][method=?]", developement_path(@developement), "post" do

      assert_select "input[name=?]", "developement[title]"

      assert_select "input[name=?]", "developement[developmentDate]"

      assert_select "input[name=?]", "developement[website]"

      assert_select "textarea[name=?]", "developement[description]"

      assert_select "input[name=?]", "developement[type]"
    end
  end
end
