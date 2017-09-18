class Enrollment < ApplicationRecord
  belongs_to :student
  belongs_to :course

  validates :enrolled_at, presence: true
  validates :student_id, uniqueness: { scope: :course_id,
    message: 'não pode estar matriculado mais de uma vez no mesmo curso' }
end
