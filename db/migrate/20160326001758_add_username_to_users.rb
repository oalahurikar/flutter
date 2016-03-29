class AddUsernameToUsers < ActiveRecord::Migration
  def change
     add_column :users, :username, :string # Add new coulmn username to table users
     add_index :users, :username, unique: true # first, index usernames for quick (rapid) lookup. Second, ensure usernames are ALWAYS unique.
  end
end
