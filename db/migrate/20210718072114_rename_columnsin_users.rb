class RenameColumnsinUsers < ActiveRecord::Migration[6.0]
  def change
    rename_column :users, :username, :Username
    rename_column :users, :fullname, :Fullname
  end
end
