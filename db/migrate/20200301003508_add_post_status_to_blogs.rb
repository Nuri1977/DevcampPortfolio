class AddPostStatusToBlogs < ActiveRecord::Migration[5.2]
  def change
    add_column :blogs, :status, :integer,default: 0
  end
end
