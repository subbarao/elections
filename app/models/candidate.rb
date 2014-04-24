class Candidate < ActiveRecord::Base
	has_many :nominations
	validates_presence_of :name
end
