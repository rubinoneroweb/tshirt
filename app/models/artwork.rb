class Artwork < ActiveRecord::Base
	has_many :printjob
	has_and_belongs_to_many :artcat, join_table: :artworks_artcats


	def maincat

		Artcat.find(self.maincat_id)
		
	end


	def move_up

		@prev = self.maincat.own_artworks.where("position < ?", self.position).order("position").last
		if @prev

			@prev_pos = @prev.position

			self.position = @prev_pos

			@prev.position = @prev_pos + 1

			self.save!
			@prev.save!
			
		end
			
	end

	def move_down

		@next = self.maincat.own_artworks.where("position > ?", self.position).order("position").first
		if @next

			@next_pos = @next.position

			self.position = @next_pos

			@next.position = @next_pos - 1

			self.save!
			@next.save!
			
		end
			
	end

end
