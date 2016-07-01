class AddIndexToUsersEmail < ActiveRecord::Migration
  def change
    # add uniqueness of the users' mails at a database level
    add_index :users, :email, unique: true
  end
end
