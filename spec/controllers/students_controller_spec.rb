require 'rails_helper'

RSpec.describe StudentsController do
  describe 'GET #index' do
    it 'does respond with 200 OK' do
      get :index

      expect(response).to be_success
    end
  end

  describe 'GET #new' do
    it 'does respond with 200 OK' do
      get :new

      expect(response).to be_success
    end
  end

  describe 'POST #create' do
    context 'when the params are valid' do
      it 'does respond with 302 Found' do
        student_params = attributes_for(:student).stringify_keys

        post :create, params: { student: student_params }

        expect(response).to have_http_status(302)
      end

      it 'does create a new student' do
        student_params = attributes_for(:student).stringify_keys

        expect do
          post :create, params: { student: student_params }
        end.to change { Student.count }.by(1)
      end
    end

    context 'when the params are invalid' do
      it 'does respond with 200 OK' do
        student_params = attributes_for(:student).
          stringify_keys.
          merge('name' => '')

        post :create, params: { student: student_params }

        expect(response).to have_http_status(200)
      end

      it 'does not create a new student' do
        student_params = attributes_for(:student).
          stringify_keys.
          merge('name' => '')

        expect do
          post :create, params: { student: student_params }
        end.not_to change { Student.count }
      end
    end
  end
end
