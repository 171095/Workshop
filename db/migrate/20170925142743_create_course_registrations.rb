class CreateCourseRegistrations < ActiveRecord::Migration[5.0]
  def change
    create_table :course_registrations do |t|
      t.string :first_name
      t.string :last_name
      t.string :contact
      t.string :email
      t.references :course, foreign_key: true

      t.timestamps
    end
  end
end
