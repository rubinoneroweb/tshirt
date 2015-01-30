class Artcat < ActiveRecord::Base
	has_and_belongs_to_many :artwork, join_table: :artworks_artcats
end
