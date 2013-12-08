class CoursesController < ApplicationController

   def index
    @courses = Course.paginate(page: params[:page])
  end

  def show
  end
  
  private

    def course_params
      params.require(:course).permit(:course_id, :name, :duration)
    end
end
