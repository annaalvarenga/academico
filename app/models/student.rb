class Student < ApplicationRecord
  validates :name, :street, :street_number, :neighborhood, :city, :state, presence: true
end
