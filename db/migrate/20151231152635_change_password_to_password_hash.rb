class ChangePasswordToPasswordHash < ActiveRecord::Migration
  def change
    remove_column :foxes, :password
    add_column :foxes, :password_hash, :string
  end
end
