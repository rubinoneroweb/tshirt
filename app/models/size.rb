class Size < ActiveRecord::Base
	has_many :printjob
	has_and_belongs_to_many :mod, join_table: :mods_and_sizes
end
