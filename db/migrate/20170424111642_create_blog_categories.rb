class CreateBlogCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :blog_categories do |t|
      t.string :name, null: false
      t.text :description

      t.timestamps null: false
    end
  end
end
