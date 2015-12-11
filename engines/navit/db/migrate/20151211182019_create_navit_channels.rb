class CreateNavitChannels < ActiveRecord::Migration
  def change
    create_table :navit_channels do |t|
      t.string :name
      t.text :description
      t.timestamps
    end
  end
end
