class AddColumnsToPosts < ActiveRecord::Migration[5.1]
  def change
  	add_column :posts, :title, :string
  	add_column :posts, :content, :string
  	add_column :posts, :user_id, :string
  end
end
