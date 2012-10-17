class CreateBlogPosts < ActiveRecord::Migration
  def change
    create_table :blog_posts do |t|
      t.string :title
      t.text :content
      t.boolean :display, default: false

      t.timestamps
    end
  end
end
