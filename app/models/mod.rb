class Mod < ActiveRecord::Base

	belongs_to :shape
	has_many :printjob

end
