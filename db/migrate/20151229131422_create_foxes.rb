class CreateFoxes < ActiveRecord::Migration
  def change
    create_table   "foxes" do |t|
      t.string     "name", null: false, limit: 50
      t.string     "color", default: "red", limit: 20
      t.integer    "den_id", index: true
      # t.references    "den", index: true
      # t.belongs_to    "den", index: true
      # # the two lines above do exactly the same thing as line 6
      t.timestamps null: false
    end
  end
end
