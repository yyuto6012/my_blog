class CreateBlogs < ActiveRecord::Migration[5.0]
  def change
    create_table :blogs do |t|
      t.string :title, null: false
      t.text :blog_url, null: false
      t.text :content
      t.string :header_photo_path, null: false
      t.integer :status, null: false, default: 0

      t.timestamps null: false
    end
  end
end
