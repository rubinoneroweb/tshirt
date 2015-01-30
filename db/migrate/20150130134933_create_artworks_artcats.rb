class CreateArtworksArtcats < ActiveRecord::Migration
  def change
    create_table :artworks_artcats do |t|

    	t.belongs_to :artwork, index: true
    	t.belongs_to :artcat, index: true

    end
  end
end
