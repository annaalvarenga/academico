require 'rails_helper'

RSpec.describe Enrollment, type: :model do
  describe 'associations' do
    it { should belong_to(:student) }
    it { should belong_to(:course) }
  end

  describe 'validations' do
    it { should validate_presence_of(:enrolled_at) }

    context 'student_id / course_id uniqueness' do
      subject { build(:enrollment) }

      it do
        should validate_uniqueness_of(:student_id).
          scoped_to(:course_id).
          with_message('não pode estar matriculado mais de uma vez no mesmo curso')
      end
    end
  end
end
