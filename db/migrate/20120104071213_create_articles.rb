class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :Title
      t.string :Slug
      t.string :Description
      t.text :Content
      t.string :Post_type
      t.string :Post_status
      t.datetime :Post_date
      t.integer :hit_count

      t.timestamps
    end
  end
end
