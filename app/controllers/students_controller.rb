class StudentsController < ApplicationController
  def index
    @students = Student.all
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(student_params)

    if @student.save
      redirect_to students_path, notice: 'Novo aluno criado com sucesso.'
    else
      render :new
    end
  end

  private

  def student_params
    params.require(:student).permit(:name, :email, :phone, :street, :street_number,
      :neighborhood, :city, :state, :postal_code)
  end
end
