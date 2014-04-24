class Seat < ActiveRecord::Base
  has_many :nominations
	validates_presence_of :name, :type

	validates_uniqueness_of :name, case_sensitive: false
end
