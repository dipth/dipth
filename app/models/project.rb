class Project < ActiveRecord::Base
  belongs_to :project_category
  has_many :project_screenshots
end
