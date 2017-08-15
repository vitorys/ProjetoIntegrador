require 'rails_helper'

RSpec.describe "Atendimentos", type: :request do
  describe "GET /atendimentos" do
    it "works! (now write some real specs)" do
      get atendimentos_path
      expect(response).to have_http_status(200)
    end
  end
end
