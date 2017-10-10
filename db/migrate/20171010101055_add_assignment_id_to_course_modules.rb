class AddAssignmentIdToCourseModules < ActiveRecord::Migration[5.0]
  def change
    add_column :course_modules, :assignment_id, :integer
  end
end
