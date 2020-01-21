require 'rails_helper'

RSpec.describe V1::PhotosController, type: :controller do
  describe 'GET #create' do
    it 'returns http success' do
      get :create
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET #show' do
    it 'returns http success' do
      get :show
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET #destroy' do
    it 'returns http success' do
      get :destroy
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET #photo_params' do
    it 'returns http success' do
      get :photo_params
      expect(response).to have_http_status(:success)
    end
  end
end
