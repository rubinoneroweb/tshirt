class Shape < ActiveRecord::Base
	has_many :mod
	has_many :shirt
	has_many :printjob
end
