class Mod < ActiveRecord::Base

	belongs_to :shape
	has_many :printjob
	has_and_belongs_to_many :color, join_table: :mods_and_colors
	has_and_belongs_to_many :size, join_table: :mods_and_sizes

end
