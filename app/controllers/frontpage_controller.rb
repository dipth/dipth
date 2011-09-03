class FrontpageController < ApplicationController
  
  def index
    @blog_entries = BlogEntry.published.order("published_at desc").limit(2)
  end
  
end
