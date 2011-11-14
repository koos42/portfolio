class CreateBlogEntries < ActiveRecord::Migration
  def change
    create_table :blog_entries do |t|
      t.string :title
      t.boolean :published
      t.datetime :published_at
      t.text :body

      t.timestamps
    end
  end
end
