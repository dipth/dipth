class CreateBlogEntries < ActiveRecord::Migration
  def change
    create_table :blog_entries do |t|
      t.string :title
      t.text :excerpt
      t.text :body
      t.datetime :published_at

      t.timestamps
    end
  end
end
