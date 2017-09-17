class Enrollment < ApplicationRecord
  belongs_to :student
  belongs_to :course

  validates :enrolled_at, presence: true
end
