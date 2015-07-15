require 'rails_helper'

RSpec.describe "Widgets", type: :request do
  describe "GET /widgets" do
    it "should return expected index View" do
      get widgets_path
      expect(response).to have_http_status(200)
      expect(response.body).to include "Good one."
    end
  end
end
