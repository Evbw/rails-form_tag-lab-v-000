class StudentsController < ApplicationController
  before_action :set_student, only: :show

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
    render :form
  end

  def create
    session[:form_params] = params.inspect
    redirect_to new_student_path
  end

end
