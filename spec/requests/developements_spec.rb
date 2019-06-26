require 'rails_helper'

RSpec.describe "Developements", type: :request do
  describe "GET /developements" do
    it "works! (now write some real specs)" do
      get developements_path
      expect(response).to have_http_status(200)
    end
  end
end
