class ProjectsController < ApplicationController
  
  def index
    @project_categories = ProjectCategory.includes(:projects).order("title asc")
  end
  
end
