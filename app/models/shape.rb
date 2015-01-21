class Shape < ActiveRecord::Base
	has_many :mod

	has_many :printjob
end
