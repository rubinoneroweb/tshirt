class CreateColors < ActiveRecord::Migration
  def change
    create_table :colors do |t|
      t.string :description
      t.string :code

      t.timestamps null: false
    end
  end
end
