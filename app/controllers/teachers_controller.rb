class TeachersController < ApplicationController
  def index
    @teachers = Teacher.all
    respond_to do |format|
      format.html
      format.json { render json: { teachers: @teachers } }
    end
  end

  def show
    @teacher = Teacher.find(params[:id])
    @review = Review.new
  end

  def destroy
    @teacher = Teacher.find(params[:id])
    @teacher.destroy
    redirect_to teachers_path
  end
end
