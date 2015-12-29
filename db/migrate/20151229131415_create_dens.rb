class CreateDens < ActiveRecord::Migration
  def change
    create_table   "dens" do |t|
      t.string     "name", null: false
      t.timestamps null: false
    end
  end
end
