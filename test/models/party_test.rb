require 'test_helper'

class PartyTest < ActiveSupport::TestCase

	def test_check_party_creation
		party = Party.create(name: " ")

		assert_not_equal true, party.valid?
		assert_not_equal true, party.persisted?
	end

	def test_uniqueness
		party1 = Party.create(name: "BJP")
		party2 = Party.create(name: "bjp")

		assert_not_equal true, party2.valid?
	end

end