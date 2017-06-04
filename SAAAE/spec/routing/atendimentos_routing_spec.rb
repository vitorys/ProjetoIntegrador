require "rails_helper"

RSpec.describe AtendimentosController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/atendimentos").to route_to("atendimentos#index")
    end

    it "routes to #new" do
      expect(:get => "/atendimentos/new").to route_to("atendimentos#new")
    end

    it "routes to #show" do
      expect(:get => "/atendimentos/1").to route_to("atendimentos#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/atendimentos/1/edit").to route_to("atendimentos#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/atendimentos").to route_to("atendimentos#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/atendimentos/1").to route_to("atendimentos#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/atendimentos/1").to route_to("atendimentos#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/atendimentos/1").to route_to("atendimentos#destroy", :id => "1")
    end

  end
end
