class Student < ApplicationRecord
  validates :name, :street, :street_number, :neighborhood, :city, :state, :postal_code,
    presence: true
end
