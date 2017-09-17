require 'rails_helper'

RSpec.describe Enrollment, type: :model do
  describe 'associations' do
    it { should belong_to(:student) }
    it { should belong_to(:course) }
  end

  describe 'validations' do
    it { should validate_presence_of(:enrolled_at) }
  end
end
