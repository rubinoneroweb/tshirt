class CreateMods < ActiveRecord::Migration
  def change
    create_table :mods do |t|
      t.integer :shape_id
      t.string :description

      t.timestamps null: false
    end
  end
end
