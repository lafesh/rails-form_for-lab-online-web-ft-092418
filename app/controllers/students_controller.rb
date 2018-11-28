class StudentsController < ApplicationController
  def new
    @student = Student.new
  end

  def create
    @student = Student.create(post_params)
    redirect_to student_path(@student)
  end

  def show
    @student = Student.find_by(params[:id])
  end

  def edit
    @student = Student.find_by(params[:id])
  end

  def update
    @student = Student.find_by(params[:id])
    @student.update(post_params)
    redirect_to student_path(@student)
  end

  private 

  def post_params
    params.require(:student).permit(:first_name, :last_name)
  end
end
