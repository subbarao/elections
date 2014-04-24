class Party < ActiveRecord::Base
  has_many :nominations
	validates_presence_of :name
	validates_uniqueness_of :name, case_sensitive: false
end
