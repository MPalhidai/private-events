require 'rails_helper'

RSpec.describe AppointmentsController, type: :controller do

  describe "POST #create" do
    xit "returns http success" do
      post :create
      expect(response).to have_http_status(:success)
    end
  end

end
