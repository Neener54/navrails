class CreateNavitComments < ActiveRecord::Migration
  def change
    create_table :navit_comments do |t|
      t.belongs_to :author, index: true, null: false
      t.belongs_to :post, index: true, null: false
      t.string :title
      t.text :body
      t.timestamps
    end
  end
end
