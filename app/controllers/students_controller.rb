class StudentsController < ApplicationController
  before_action :set_student, only: :show

  def index
    @students = Student.all
    render :index
  end

  def show
    # set_student

  end

  def activate
    # if set_student.active == true
    #   set_student.active = false
    # elsif set_student.active == false
    #   set_student.active = true
    # end
    @student = Student.find(params[:id])

    if @student.active == true
      @student.active = false
    elsif @student.active == false
      @student.active = true

    end
    @student.save

    # @student.active = !@student.active
    # @student.save


    # redirect_to("/students/#{@student.id}")
    redirect_to student_path(@student)
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end
