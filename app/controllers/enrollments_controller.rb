class EnrollmentsController < ApplicationController
  def index
    @enrollments = Enrollment.includes(:student, :course).all
  end

  def new
    @enrollment = Enrollment.new
  end
end
