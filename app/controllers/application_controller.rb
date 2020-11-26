class ApplicationController < ActionController::Base
  before_action :set_counter

  private

  def set_counter
    @teacher_count = Teacher.count
  end
end
