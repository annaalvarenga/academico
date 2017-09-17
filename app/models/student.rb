class Student < ApplicationRecord
  validates :name, :email, :phone, :street, :street_number, :neighborhood, :city, :state,
    :postal_code, presence: true
end
