class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :ensure_domain
  
  APP_DOMAIN = 'dipth.com'
  
  # For better SEO, make sure that all traffic goes to the main domain.
  def ensure_domain
    if request.env['HTTP_HOST'] != APP_DOMAIN && Rails.env.production?
      # HTTP 301 is a "permanent" redirect
      redirect_to "http://#{APP_DOMAIN}", :status => 301
    end
  end
end
