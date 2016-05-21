require 'rails_helper'

RSpec.describe "PotentialUsers", type: :request do
  describe "GET /potential_users" do
    it "works! (now write some real specs)" do
      get potential_users_path
      expect(response).to have_http_status(200)
    end
  end
end
