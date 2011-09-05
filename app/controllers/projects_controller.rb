class ProjectsController < ApplicationController
  
  def index
    @project_categories = ProjectCategory.includes(:projects).order("project_categories.title asc, projects.title asc")
    @project_screenshots = ProjectScreenshot.includes(:project).order("random()")
  end
  
end
