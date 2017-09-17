require 'rails_helper'

RSpec.describe StudentsController do
  describe 'GET #index' do
    it 'does respond with 200 OK' do
      get :index

      expect(response).to be_success
    end
  end
end
