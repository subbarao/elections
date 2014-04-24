require 'test_helper'

class CandidateTest < ActiveSupport::TestCase

	def test_valid_creation

		candidate = Candidate.new(name: '')
		assert_not_equal true, candidate.valid?

	end

end
