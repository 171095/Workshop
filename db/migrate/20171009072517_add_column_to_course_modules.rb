class AddColumnToCourseModules < ActiveRecord::Migration[5.0]
  def change
    add_column :course_modules, :slug, :string
  end
end
