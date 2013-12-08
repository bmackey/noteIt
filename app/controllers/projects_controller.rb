class ProjectsController < ApplicationController
  
  def index
    @projects = Project.paginate(page: params[:page])
  end

  def show
  end

  private

    def course_params
      params.require(:project).permit(:project_id, :name, :description)
    end
end

