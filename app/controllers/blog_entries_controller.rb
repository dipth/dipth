class BlogEntriesController < ApplicationController
  
  def index
    @search = BlogEntry.search do
      fulltext params[:search]
      with(:published_at).less_than(Time.zone.now)
      facet(:published_month)
      with(:published_month, params[:month]) if params[:month].present?
      order_by(:published_at, :desc) unless params[:search].present?
    end
    @blog_entries = @search.results
  end
  
end
