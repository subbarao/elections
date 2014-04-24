require 'test_helper'

class NominationTest < ActiveSupport::TestCase
  def test_setting_nomination
    mp = Mp.create(name: 'machilipatnam')

    party1 = Party.create(name: 'TDP')
    candidate1 = Candidate.create(name: 'Kaikala Satyanarayna')

    party2 = Party.create(name: 'BJP')
    candidate2 = Candidate.create(name: 'Some Narayana')

    nomination1 = Nomination.create(party: party1, candidate: candidate1, seat: mp)
    nomination2 = Nomination.create(party: party2, candidate: candidate2, seat: mp)

    assert_equal true, nomination1.valid?
		assert_not_equal true, nomination2.nil?
  end


end
