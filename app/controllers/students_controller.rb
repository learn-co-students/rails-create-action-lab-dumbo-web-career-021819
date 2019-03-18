class StudentsController < ApplicationController

  before_action :get_student, only: [:show]

  def index
    @students = Student.all
  end

  def new

  end

  def show
    get_student
  end


  def create
    @student = Student.create(first_name: params[:first_name], last_name: params[:last_name])
    redirect_to @student
  end

  private

  def get_student
    @student = Student.find(params[:id])
  end

  # def student_params
  #   byebug
  #   params.require(:student).permit(:first_name, :last_name)
  # end

end
