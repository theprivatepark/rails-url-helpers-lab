class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :activate]
  before_action :set_students, only: :index
  
  def index
    
  end

  def show
  end

  def activate
    @student.active = !@student.active
    @student.save
    redirect_to @student
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end

    def set_students
      @students = Student.all
    end
end