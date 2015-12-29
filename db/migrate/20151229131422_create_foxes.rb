class CreateFoxes < ActiveRecord::Migration
  def change
    create_table   "foxes" do |t|
      t.string     "name", null: false
      t.string     "color", default: "red"
      t.integer    "den_id", index: true

      t.timestamps null: false
    end
  end
end
