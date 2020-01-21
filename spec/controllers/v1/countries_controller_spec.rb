require 'rails_helper'

RSpec.describe V1::CountriesController, type: :controller do

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #getOne" do
    it "returns http success" do
      get :getOne
      expect(response).to have_http_status(:success)
    end
  end

end
