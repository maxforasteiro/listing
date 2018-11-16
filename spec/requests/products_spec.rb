require 'rails_helper'

RSpec.describe 'Todos API', type: :request do
  let!(:products) { create_list(:product, 10) }

  describe 'GET /products' do
    before { get '/products' }

    it 'returns products' do
      expect(json).not_to be_empty
      expect(json.size).to eq(10)
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end
  end
end
