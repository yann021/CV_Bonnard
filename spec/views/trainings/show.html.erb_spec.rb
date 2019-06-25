require 'rails_helper'

RSpec.describe "trainings/show", type: :view do
  before(:each) do
    @training = assign(:training, Training.create!(
      :title => "Title",
      :trainingCenter => "Training Center",
      :date => "Date",
      :website => "Website",
      :description => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Training Center/)
    expect(rendered).to match(/Date/)
    expect(rendered).to match(/Website/)
    expect(rendered).to match(/MyText/)
  end
end
