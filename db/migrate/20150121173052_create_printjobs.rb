class CreatePrintjobs < ActiveRecord::Migration
  def change
    create_table :printjobs do |t|
      t.string :name
      t.integer :shape_id
      t.integer :mod_id
      t.integer :color_id
      t.integer :size_id
      t.integer :artwork_id
      t.boolean :diamond
      t.boolean :name_under
      t.boolean :name_behind

      t.timestamps null: false
    end
  end
end
