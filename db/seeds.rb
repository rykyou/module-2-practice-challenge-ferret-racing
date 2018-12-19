charity1 = Charity.create(name: "Ferret Rescue UK", main_focus: "Ferrets in London" )
charity1 = Charity.create(name: "National Ferret Charity", main_focus: "Ferrets in the Midlands" )
charity1 = Charity.create(name: "Albino Ferret Rehoming Charity", main_focus: "Fabulous white ferrets" )

tunnel1 = Tunnel.create(colour: "Blue", length: 2)
tunnel1 = Tunnel.create(colour: "Green", length: 1)
tunnel1 = Tunnel.create(colour: "Red", length: 3)
tunnel1 = Tunnel.create(colour: "Yellow", length: 15)

ferret1 = Ferret.create(name: "Lucille Bluth", neutered: true, charity_id: 1)
ferret1 = Ferret.create(name: "Guy Bennett-Jones", neutered: false, charity_id: 2)
ferret1 = Ferret.create(name: "Dan Katchsumchicks", neutered: true, charity_id: 3)
ferret1 = Ferret.create(name: "Wachira Wachira", neutered: false, charity_id: 1)
ferret1 = Ferret.create(name: "SuperMarju", neutered: true, charity_id: 2)
