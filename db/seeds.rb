mp = Mp.create(name: "Varnasi")
mla = Mla.create(name: "Machilipatnam")
bjp = Party.create(name: "BJP")
candidate = Candidate.create(name: "Modi")

Nomination.create(party: bjp, candidate: candidate, seat: mp, year: 2014)
aap = Party.create(name: "AAP")

kejri = Candidate.create(name: "Kejriwal")
Nomination.create(party: aap, candidate: kejri, seat: mp, year: 2014)
