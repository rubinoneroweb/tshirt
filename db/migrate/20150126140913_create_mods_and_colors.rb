class CreateModsAndColors < ActiveRecord::Migration
  def change
    create_table :mods_and_colors do |t|
    	t.belongs_to :mod, index: true
      	t.belongs_to :color, index: true
    end
  end
end
