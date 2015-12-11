class AddDescriptiontoPosts < ActiveRecord::Migration
  def change
    add_column :navit_posts, :description, :text
  end
end
