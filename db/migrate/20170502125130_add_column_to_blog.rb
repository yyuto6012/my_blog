class AddColumnToBlog < ActiveRecord::Migration[5.0]
  def change
    add_column :blogs, :blog_category_id, :integer, foreign_key: true
  end
end
