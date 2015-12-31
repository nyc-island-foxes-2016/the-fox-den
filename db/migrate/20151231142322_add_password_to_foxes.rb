class AddPasswordToFoxes < ActiveRecord::Migration
  def change
    add_column :foxes, :password, :string
  end
end
