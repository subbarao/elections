class Nomination < ActiveRecord::Base
  
  belongs_to :candidate
  belongs_to :seat
  belongs_to :party

end
