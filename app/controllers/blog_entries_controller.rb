class BlogEntriesController < ApplicationController
  
  def index
    @blog_entries = BlogEntry.published.order("published_at desc")
  end
  
end
