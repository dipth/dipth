class ProjectCategory < ActiveRecord::Base
  
  has_many :projects
  
  validates_presence_of :title
  
end
