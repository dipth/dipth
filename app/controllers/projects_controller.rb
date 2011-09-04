class ProjectsController < ApplicationController
  
  def index
    @project_categories = ProjectCategory.includes(:projects).order("title asc")
    @project_screenshots = ProjectScreenshot.includes(:project).order("random()")
  end
  
end
