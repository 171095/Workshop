class AddFieldsToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :contact, :string
    add_column :users, :address, :string
    add_column :users, :college, :string
    add_column :users, :current_status, :string
    add_column :users, :degree, :string
  end
end
