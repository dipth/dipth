class BlogEntry < ActiveRecord::Base
  
  scope :published, lambda { where("published_at is not null and published_at < ?", Time.zone.now ) }
  
end
