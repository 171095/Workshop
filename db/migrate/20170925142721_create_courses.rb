class CreateCourses < ActiveRecord::Migration[5.0]
  def change
    create_table :courses do |t|
      t.string :name
      t.text :description
      t.integer :course_fees
      t.integer :course_duration
      t.string :banner_image

      t.timestamps
    end
  end
end
