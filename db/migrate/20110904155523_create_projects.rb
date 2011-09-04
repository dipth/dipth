class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title
      t.text :description
      t.text :tech_stack
      t.string :site_url
      t.string :github_url
      t.references :project_category

      t.timestamps
    end
    add_index :projects, :project_category_id
  end
end
