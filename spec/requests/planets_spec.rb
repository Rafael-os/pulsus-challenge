require 'rails_helper'

RSpec.describe "Planets", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/planets/index"
      expect(response).to have_http_status(:success)
    end
  end

end
