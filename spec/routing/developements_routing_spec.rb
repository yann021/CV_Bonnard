require "rails_helper"

RSpec.describe DevelopementsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/developements").to route_to("developements#index")
    end

    it "routes to #new" do
      expect(:get => "/developements/new").to route_to("developements#new")
    end

    it "routes to #show" do
      expect(:get => "/developements/1").to route_to("developements#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/developements/1/edit").to route_to("developements#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/developements").to route_to("developements#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/developements/1").to route_to("developements#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/developements/1").to route_to("developements#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/developements/1").to route_to("developements#destroy", :id => "1")
    end
  end
end
