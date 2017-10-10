class AddColumnToChapters < ActiveRecord::Migration[5.0]
  def change
    add_column :chapters, :slug, :string
  end
end
