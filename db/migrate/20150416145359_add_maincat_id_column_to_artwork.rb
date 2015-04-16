class AddMaincatIdColumnToArtwork < ActiveRecord::Migration
  def change
    add_column :artworks, :maincat_id, :integer
  end
end
