class StudentsController < ApplicationController
  before_action :find_student, only: :show

  def index
    @students = Student.all
  end

  def show
    find_student
    active_inactive(@student)
  end

  def activate
    find_student

    @student.active ? true : false
    @student.save
    redirect_to :student
  end

  #
  # def update
  #   find_student
  #   @student.update(active: "true")
  #
  #   redirect_to :student_path
  # end

  private

    def find_student
      @student = Student.find(params[:id])
    end

    def student_params
      params.require(:student).permit_all_parameters
      # params.require(:sea).permit(:name, :temperature, :bio, :mood, :image_url, :favorite_color, :scariest_creature, :has_mermaids)
    end

    def active_inactive(student)
      if student.active
        student.active = false
      else
        student.active = true
      end
      student.save
    end

end
