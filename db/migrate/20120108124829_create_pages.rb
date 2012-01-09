class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string :title
      t.text :context
      t.integer :parent
      t.integer :user_id
      t.string :slug

      t.timestamps
    end
  end
end
