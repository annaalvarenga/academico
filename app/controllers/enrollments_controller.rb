class EnrollmentsController < ApplicationController
  def index
    @enrollments = Enrollment.includes(:student, :course).all
  end

  def new
    @enrollment = Enrollment.new
  end

  def create
    @enrollment = Enrollment.new(enrollment_params)

    if @enrollment.save
      redirect_to enrollments_path, notice: 'Nova matrícula efetuada com sucesso.'
    else
      render :new
    end
  end

  private

  def enrollment_params
    params.require(:enrollment).permit(:student_id, :course_id, :enrolled_at)
  end
end
