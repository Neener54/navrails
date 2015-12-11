class CreateNavitPosts < ActiveRecord::Migration
  def change
    create_table :navit_posts do |t|
      t.belongs_to :author, index: true, null: false
      t.text :title
      t.timestamps
    end
  end
end
