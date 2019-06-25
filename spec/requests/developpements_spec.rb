require 'rails_helper'

RSpec.describe "Developpements", type: :request do
  describe "GET /developpements" do
    it "works! (now write some real specs)" do
      get developpements_path
      expect(response).to have_http_status(200)
    end
  end
end
