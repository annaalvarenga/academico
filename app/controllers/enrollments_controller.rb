class EnrollmentsController < ApplicationController
  def index
    @enrollments = Enrollment.includes(:student, :course).all
  end
end
