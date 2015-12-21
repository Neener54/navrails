class CreateNavEmployeeHighlightsEmployees < ActiveRecord::Migration
  def change
    create_table :nav_employee_highlights_employees do |t|
      t.string :name
      t.text :bio
      t.string :display_image_path
      t.string :email
      t.timestamps
    end
  end
end
