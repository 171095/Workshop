class CreateChapters < ActiveRecord::Migration[5.0]
  def change
    create_table :chapters do |t|
      t.string :name
      t.text :details
      t.references :course_module, foreign_key: true

      t.timestamps
    end
  end
end
