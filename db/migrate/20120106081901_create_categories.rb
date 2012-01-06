class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :name
      t.string :slug
      t.text :description
      t.integer :parent , :default => 0

      t.timestamps
    end
  end
end
