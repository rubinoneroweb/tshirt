class CreateArtcats < ActiveRecord::Migration
  def change
    create_table :artcats do |t|
      t.string :description
      t.string :path

      t.timestamps null: false
    end
  end
end
