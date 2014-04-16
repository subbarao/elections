class Seat < ActiveRecord::Base
  has_many :nominations
end
