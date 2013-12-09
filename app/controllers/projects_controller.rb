class ProjectsController < ApplicationController
  
  def index
    @projects = Project.paginate(:per_page => 5, :page => params[:page])
    #.search(params[":search"]).
  end

 	#  def search
	#   if params[:query]
	#     @projects = Project.search(params[:query])
	#   else
	#     @projects = []
	#   end
	# end

  private

    def course_params
      params.require(:project).permit(:project_id, :name, :description)
    end
end

