class Printjob < ActiveRecord::Base

	belongs_to :mod
	belongs_to :size
	belongs_to :artwork
	belongs_to :shape
	belongs_to :color
end
