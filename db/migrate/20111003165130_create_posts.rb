class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.text :title
      t.text :content
      t.text :preview
      t.boolean :visible

      t.timestamps
    end
  end
end
