class AddPathToMods < ActiveRecord::Migration
  def change
    add_column :mods, :path, :string
  end
end
