class ProjectScreenshot < ActiveRecord::Base
  belongs_to :project
  has_attached_file :image,
    :storage => :s3,
    :bucket => 'dipth',
    :s3_credentials => {
      :access_key_id => ENV['S3_KEY'],
      :secret_access_key => ENV['S3_SECRET']
    }
end
