FactoryGirl.define do
  factory :enrollment do
    association :student, strategy: :build
    association :course, strategy: :build
    enrolled_at { Date.current }
  end
end
