require 'rails_helper'

RSpec.describe Student, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:street) }
    it { should validate_presence_of(:street_number) }
    it { should validate_presence_of(:neighborhood) }
    it { should validate_presence_of(:city) }
    it { should validate_presence_of(:state) }
    it { should validate_presence_of(:postal_code) }
  end
end
