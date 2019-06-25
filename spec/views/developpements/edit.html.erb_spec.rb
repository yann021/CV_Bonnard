require 'rails_helper'

RSpec.describe "developpements/edit", type: :view do
  before(:each) do
    @developpement = assign(:developpement, Developpement.create!(
      :title => "MyString",
      :developmentDate => "MyString",
      :website => "MyString",
      :description => "MyText",
      :type => 1
    ))
  end

  it "renders the edit developpement form" do
    render

    assert_select "form[action=?][method=?]", developpement_path(@developpement), "post" do

      assert_select "input[name=?]", "developpement[title]"

      assert_select "input[name=?]", "developpement[developmentDate]"

      assert_select "input[name=?]", "developpement[website]"

      assert_select "textarea[name=?]", "developpement[description]"

      assert_select "input[name=?]", "developpement[type]"
    end
  end
end
