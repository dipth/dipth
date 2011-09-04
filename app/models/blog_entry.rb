class BlogEntry < ActiveRecord::Base
  
  validates_presence_of :title, :excerpt, :body
  
  scope :published, lambda { where("published_at is not null and published_at < ?", Time.zone.now ) }
  
end
