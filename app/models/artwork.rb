class Artwork < ActiveRecord::Base
	has_many :printjob
	has_and_belongs_to_many :artcat, join_table: :artworks_artcats
end
