require 'rails_helper'

RSpec.describe "developpements/new", type: :view do
  before(:each) do
    assign(:developpement, Developpement.new(
      :title => "MyString",
      :developmentDate => "MyString",
      :website => "MyString",
      :description => "MyText",
      :type => 1
    ))
  end

  it "renders new developpement form" do
    render

    assert_select "form[action=?][method=?]", developpements_path, "post" do

      assert_select "input[name=?]", "developpement[title]"

      assert_select "input[name=?]", "developpement[developmentDate]"

      assert_select "input[name=?]", "developpement[website]"

      assert_select "textarea[name=?]", "developpement[description]"

      assert_select "input[name=?]", "developpement[type]"
    end
  end
end
