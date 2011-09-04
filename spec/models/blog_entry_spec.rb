require 'spec_helper'

describe BlogEntry do
  
  describe "Validation" do
    
    it "requires a title" do
      blog_entry = BlogEntry.new
      blog_entry.should have(1).error_on(:title)
      blog_entry.title = "Test"
      blog_entry.should have(:no).errors_on(:title)
    end
    
    it "requires an excerpt" do
      blog_entry = BlogEntry.new
      blog_entry.should have(1).error_on(:excerpt)
      blog_entry.excerpt = "Test"
      blog_entry.should have(:no).errors_on(:excerpt)
    end
    
    it "requires a body" do
      blog_entry = BlogEntry.new
      blog_entry.should have(1).error_on(:body)
      blog_entry.body = "Test"
      blog_entry.should have(:no).errors_on(:body)
    end
    
  end
  
  describe "Scopes" do
    
    it "should not show up in the published scope unless it is published" do
      blog_entry = FactoryGirl.create(:blog_entry)
      BlogEntry.published.should_not include(blog_entry)
      blog_entry.update_attribute(:published_at, Time.zone.now + 1.hour)
      BlogEntry.published.should_not include(blog_entry)
      blog_entry.update_attribute(:published_at, Time.zone.now)
      BlogEntry.published.should include(blog_entry)
    end
    
  end
  
end
