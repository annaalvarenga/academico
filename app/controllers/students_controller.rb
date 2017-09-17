class StudentsController < ApplicationController
  def index
    if Student.count.zero?
      Student.create!(name: 'Anna', email: 'anna.alvarenga.a92@gmail.com',
        phone: '(11) 11111-1111', street: 'Rua Sem Nome', street_number: 1234,
        neighborhood: 'Bairro Sem Nome', city: 'Mogi das Cruzes', state: 'SP',
        postal_code: '08790-500')
    end

    @students = Student.all
  end
end
