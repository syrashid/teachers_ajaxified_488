class ReviewsController < ApplicationController
  def create
    @teacher = Teacher.find(params[:teacher_id])
    @review = Review.new(review_params)
    @review.teacher = @teacher
    if @review.save
      redirect_to teacher_path(@teacher, anchor: "review-#{@review.id}")
    else
      render 'teachers/show'
    end
  end

  private

  def review_params
    params.require(:review).permit(:content)
  end
end
