movie_list = [
  ["Big Hero 6", "Family", "PG", 3, "Robotics prodigy Hiro (Ryan Potter) lives in the city of San Fransokyo. Next to his older brother, Tadashi, Hiro's closest companion is Baymax (Scott Adsit), a robot whose sole purpose is to take care of people. When a devastating turn of events throws Hiro into the middle of a dangerous plot, he transforms Baymax and his other friends, Go Go Tamago (Jamie Chung), Wasabi (Damon Wayans Jr.), Honey Lemon (Genesis Rodriguez) and Fred (T.J. Miller) into a band of high-tech heroes."],
  ["Interstellar", "Action/Adventure", "PG-13", 3, "In Earth's future, a global crop blight and second Dust Bowl are slowly rendering the planet uninhabitable. Professor Brand (Michael Caine), a brilliant NASA physicist, is working on plans to save mankind by transporting Earth's population to a new home via a wormhole. But first, Brand must send former NASA pilot Cooper (Matthew McConaughey) and a team of researchers through the wormhole and across the galaxy to find out which of three planets could be mankind's new home."],
  ["Guardians of the Galaxy", "SciFi/Fantasy", "PG-13", 4, "Brash space adventurer Peter Quill (Chris Pratt) finds himself the quarry of relentless bounty hunters after he steals an orb coveted by Ronan, a powerful villain. To evade Ronan, Quill is forced into an uneasy truce with four disparate misfits: gun-toting Rocket Raccoon, treelike-humanoid Groot, enigmatic Gamora, and vengeance-driven Drax the Destroyer. But when he discovers the orb's true power and the cosmic threat it poses, Quill must rally his ragtag group to save the universe."],
  ["Wild", "Drama", "R", 3, "Brash space adventurer Peter Quill (Chris Pratt) finds himself the quarry of relentless bounty hunters after he steals an orb coveted by Ronan, a powerful villain. To evade Ronan, Quill is forced into an uneasy truce with four disparate misfits: gun-toting Rocket Raccoon, treelike-humanoid Groot, enigmatic Gamora, and vengeance-driven Drax the Destroyer. But when he discovers the orb's true power and the cosmic threat it poses, Quill must rally his ragtag group to save the universe."],
  ["The Wedding Ringer", "Comedy", "R", 2, "Socially awkward Doug Harris (Josh Gad) is two weeks from marrying the gal (Kaley Cuoco-Sweeting) of his dreams, but he has a problem: He doesn't have any groomsmen for the occasion. Desperate and running out of time, Doug calls upon Jimmy Callahan (Kevin Hart), owner and operator of Best Man Inc., a company that provides attendants for friendless grooms. As Doug tries to pull off the con, a bromance unexpectedly blossoms between Jimmy and himself."]
]

movie_list.each do |title, genre, rated, stars, description|
  Movie.create(title: title, genre: genre, rated: rated, stars: stars, description: description)
end
