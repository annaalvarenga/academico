class Student < ApplicationRecord
  has_many :enrollments
  has_many :courses, through: :enrollments

  validates :name, :email, :phone, :street, :street_number, :neighborhood, :city, :state,
    :postal_code, presence: true
end
