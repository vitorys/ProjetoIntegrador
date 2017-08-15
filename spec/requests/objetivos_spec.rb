require 'rails_helper'

RSpec.describe "Objetivos", type: :request do
  describe "GET /objetivos" do
    it "works! (now write some real specs)" do
      get objetivos_path
      expect(response).to have_http_status(200)
    end
  end
end
