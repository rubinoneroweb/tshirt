class Printjob < ActiveRecord::Base

	belongs_to :mod
	belongs_to :size
	belongs_to :artwork
	belongs_to :shape
	belongs_to :color
	belongs_to :font


	def archive        
	    update_attribute(:archived, true)
	end 

end


