require "rails_helper"

RSpec.describe ObjetivosController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/objetivos").to route_to("objetivos#index")
    end

    it "routes to #new" do
      expect(:get => "/objetivos/new").to route_to("objetivos#new")
    end

    it "routes to #show" do
      expect(:get => "/objetivos/1").to route_to("objetivos#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/objetivos/1/edit").to route_to("objetivos#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/objetivos").to route_to("objetivos#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/objetivos/1").to route_to("objetivos#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/objetivos/1").to route_to("objetivos#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/objetivos/1").to route_to("objetivos#destroy", :id => "1")
    end

  end
end
