class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :activate]

  def index
    @students = Student.all
    render :index
  end

  def show
    # @student = Student.find(params[:id])
    render :show
  end

  # def edit
  #
  # end

  def activate
    #because this method was added to before_action
    #the set_student is actually being called in this method
    #so magical!
    @student.active = !@student.active
    @student.save
    redirect_to student_path
  end


  private

    def set_student
      @student = Student.find(params[:id])
    end

    # def student_params
    #   params.require(:student).permit(:active)
    # end

end
