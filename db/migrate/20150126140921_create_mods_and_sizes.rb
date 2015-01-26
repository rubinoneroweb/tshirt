class CreateModsAndSizes < ActiveRecord::Migration
  def change
    create_table :mods_and_sizes do |t|
    	t.belongs_to :mod, index: true
      	t.belongs_to :size, index: true
    end
  end
end
