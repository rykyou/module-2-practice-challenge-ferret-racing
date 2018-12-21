Charity.destroy_all
Tunnel.destroy_all
Ferret.destroy_all
Race.destroy_all

charity1 = Charity.create(name: "Ferret Rescue UK", main_focus: "Ferrets in London" )
charity2 = Charity.create(name: "Free the Ferrets", main_focus: "Protection for the Ferrets" )
charity3 = Charity.create(name: "Ferret Lovers", main_focus: "Group for Ferret Enthusiasts" )

tunnel1 = Tunnel.create(colour: "Blue", length: 2)
tunnel2 = Tunnel.create(colour: "Red", length: 5)
tunnel3 = Tunnel.create(colour: "Black", length: 10)
tunnel4 = Tunnel.create(colour: "Orange", length: 7)



ferret1 = Ferret.create(name: "Lucille Bluth", neutered: true, charity_id: 2)
ferret2 = Ferret.create(name: "Lucifer", neutered: false, charity_id: 3)
ferret3 = Ferret.create(name: "Mary Poppins", neutered: true, charity_id: 2)
ferret4 = Ferret.create(name: "Hopscotch", neutered: false, charity_id: 1)
ferret5 = Ferret.create(name: "Smoothy", neutered: true, charity_id: 1)



race1 = Race.create(ferret_id: 1, tunnel_id: 2)
race2 = Race.create(ferret_id: 2, tunnel_id: 2)
race2 = Race.create(ferret_id: 3, tunnel_id: 4)
race2 = Race.create(ferret_id: 4, tunnel_id: 1)
race2 = Race.create(ferret_id: 5, tunnel_id: 4)
race2 = Race.create(ferret_id: 1, tunnel_id: 4)
race2 = Race.create(ferret_id: 1, tunnel_id: 3)
