class AddMetaTitleToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :meta_title, :string
  end
end
