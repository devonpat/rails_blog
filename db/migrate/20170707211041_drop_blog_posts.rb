class DropBlogPosts < ActiveRecord::Migration[5.1]
  def change
  	drop_table :blog_posts
  end
end
