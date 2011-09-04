class CreateProjectScreenshots < ActiveRecord::Migration
  def change
    create_table :project_screenshots do |t|
      t.references :project
      t.string :image_file_name
      t.string :image_content_type
      t.integer :image_file_size
      t.datetime :image_updated_at

      t.timestamps
    end
    add_index :project_screenshots, :project_id
  end
end
