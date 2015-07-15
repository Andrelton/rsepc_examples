require 'rails_helper'

RSpec.describe "Tigers", type: :request do

  describe 'GET /index' do
    it 'should render the expected index VIEW' do
      get tigers_path
      ap request
      expect(response).to have_http_status(200)
      expect(response.body).to include "Good one."
    end
  end

end
