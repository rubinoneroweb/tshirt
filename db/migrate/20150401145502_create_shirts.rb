class CreateShirts < ActiveRecord::Migration
  def change
    create_table :shirts do |t|
      t.string :description
      t.integer :shape_id
      t.string :path

      t.timestamps null: false
    end
  end
end
