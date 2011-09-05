class BlogEntry < ActiveRecord::Base
  
  validates_presence_of :title, :excerpt, :body
  
  scope :published, lambda { where("published_at is not null and published_at < ?", Time.zone.now ) }
  
  searchable do
    text :title, :boost => 5
    text :excerpt
    text :body
    time :published_at
    string :published_month
  end
  
  def published_month
    published_at.present? ? published_at.strftime("%B %Y") : nil
  end
  
  def to_param
    "#{id}-#{title.gsub(/[^a-z0-9]+/i, '-')}"
  end
  
end
