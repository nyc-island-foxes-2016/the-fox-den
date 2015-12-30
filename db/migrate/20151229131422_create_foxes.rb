class CreateFoxes < ActiveRecord::Migration
  def change
    create_table   "foxes" do |t|
      t.string     "name", null: false
      t.string     "color", default: "red"
      t.integer    "den_id", index: true
      # t.references    "den", index: true
      # t.belongs_to    "den", index: true
      # # the two lines above do exactly the same thing as line 6
      t.timestamps null: false
    end
  end
end
