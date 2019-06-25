require "rails_helper"

RSpec.describe DeveloppementsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/developpements").to route_to("developpements#index")
    end

    it "routes to #new" do
      expect(:get => "/developpements/new").to route_to("developpements#new")
    end

    it "routes to #show" do
      expect(:get => "/developpements/1").to route_to("developpements#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/developpements/1/edit").to route_to("developpements#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/developpements").to route_to("developpements#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/developpements/1").to route_to("developpements#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/developpements/1").to route_to("developpements#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/developpements/1").to route_to("developpements#destroy", :id => "1")
    end
  end
end
