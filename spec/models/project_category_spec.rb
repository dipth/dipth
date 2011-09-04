require 'spec_helper'

describe ProjectCategory do
  
  describe "Validation" do
    
    it "requires a title" do
      project_category = ProjectCategory.new
      project_category.should have(1).error_on(:title)
      project_category.title = "Test"
      project_category.should have(:no).errors_on(:title)
    end
    
  end
  
end
