class CreateShapes < ActiveRecord::Migration
  def change
    create_table :shapes do |t|
      t.string :description

      t.timestamps null: false
    end
  end
end
