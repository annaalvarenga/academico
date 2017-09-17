require 'rails_helper'

RSpec.describe EnrollmentsController do
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
        student = create(:student)
        course = create(:course)
        enrollment_params = {
          'student_id' => student.id,
          'course_id' => course.id,
          'enrolled_at(3i)' => '31',
          'enrolled_at(2i)' => '01',
          'enrolled_at(1i)' => '2017'
        }

        post :create, params: { enrollment: enrollment_params }

        expect(response).to have_http_status(302)
      end

      it 'does create a new enrollment' do
        student = create(:student)
        course = create(:course)
        enrollment_params = {
          'student_id' => student.id,
          'course_id' => course.id,
          'enrolled_at(3i)' => '31',
          'enrolled_at(2i)' => '01',
          'enrolled_at(1i)' => '2017'
        }

        expect do
          post :create, params: { enrollment: enrollment_params }
        end.to change { Enrollment.count }.by(1)
      end
    end

    context 'when the params are invalid' do
      it 'does respond with 200 OK' do
        course = create(:course)
        enrollment_params = {
          'student_id' => '',
          'course_id' => course.id,
          'enrolled_at(3i)' => '31',
          'enrolled_at(2i)' => '01',
          'enrolled_at(1i)' => '2017'
        }

        post :create, params: { enrollment: enrollment_params }

        expect(response).to have_http_status(200)
      end

      it 'does not create a new enrollment' do
        course = create(:course)
        enrollment_params = {
          'student_id' => '',
          'course_id' => course.id,
          'enrolled_at(3i)' => '31',
          'enrolled_at(2i)' => '01',
          'enrolled_at(1i)' => '2017'
        }

        expect do
          post :create, params: { enrollment: enrollment_params }
        end.not_to change { Enrollment.count }
      end
    end
  end
end
