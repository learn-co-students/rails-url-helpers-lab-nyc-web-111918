class StudentsController < ApplicationController
  before_action :set_student, only: :show

  def index
    @students = Student.all
  end

  def show
    set_student
    activeinactive(@student)
    render :show
  end

  def activate
    set_student
    @student.active ? true : false
    @student.save
    redirect_to :student
  end


private

    def activeinactive(student)
      if student.active
        student.active = false
      else
        student.active = true
      end
      student.save
    end

    def set_student
      @student = Student.find(params[:id])
    end
end
