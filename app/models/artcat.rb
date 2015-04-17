class Artcat < ActiveRecord::Base
	has_and_belongs_to_many :artwork, join_table: :artworks_artcats

	def own_artworks
		Artwork.where("maincat_id = ?", self.id)
	end

end
