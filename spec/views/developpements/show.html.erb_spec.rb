require 'rails_helper'

RSpec.describe "developpements/show", type: :view do
  before(:each) do
    @developpement = assign(:developpement, Developpement.create!(
      :title => "Title",
      :developmentDate => "Development Date",
      :website => "Website",
      :description => "MyText",
      :type => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Development Date/)
    expect(rendered).to match(/Website/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/2/)
  end
end
