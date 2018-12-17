class StudentsController < ApplicationController
  before_action :set_student, only: :show

  def index
    @students = Student.all
    render :index
  end

  def show
    set_student
    render :show
  end

  def active
    set_student

    render :active
  end

  def update
    set_student
    if params[:student][:active] == "1"
    @student.update(active: 1)
    else
    @student.update(active: 0)
    end
    redirect_to "/students/#{@student.id}"
  end

  private
#gets a student instance called @student
    def set_student
      @student = Student.find(params[:id])
    end
end
