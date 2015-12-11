class AddChannelRefToPosts < ActiveRecord::Migration
  def change
    add_column :navit_posts, :channel_id, :integer
  end
end
