class CreateProblems < ActiveRecord::Migration[5.0]
  def change
    create_table :problems do |t|
      t.text :question
      t.integer :assignment_id

      t.timestamps
    end
  end
end
