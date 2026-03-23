Movie.destroy_all
List.destroy_all

lists = [
  "Action",
  "Aventure",
  "Animation",
  "Comédie",
  "Crime",
  "Documentaire",
  "Drame",
  "Fantastique",
  "Horreur",
  "Musical",
  "Mystère",
  "Romance",
  "Science-Fiction",
  "Thriller",
  "Western",
  "Marvel"
]

lists.each do |name|
  List.create!(name: name)
end

puts "✅ #{List.count} lists created successfully!"

action          = List.find_by(name: "Action")
crime           = List.find_by(name: "Crime")
science_fiction = List.find_by(name: "Science-Fiction")
drame           = List.find_by(name: "Drame")

movies = [
  # Science Fiction
  { title: "Inception", overview: "A thief who steals corporate secrets through dream-sharing technology is given the task of planting an idea into a C.E.O.'s mind.", poster_url: "https://image.tmdb.org/t/p/w500/9gk7adHYeDvHkCSEqAvQNLV5Uge.jpg", rating: 8.8, list: science_fiction },
  { title: "Interstellar", overview: "A team of explorers travel through a wormhole in space to ensure humanity's survival.", poster_url: "https://image.tmdb.org/t/p/w500/gEU2QniE6E77NI6lCU6MxlNBvIx.jpg", rating: 8.6, list: science_fiction },
  { title: "The Matrix", overview: "A computer hacker learns about the true nature of his reality and his role in the war against its controllers.", poster_url: "https://image.tmdb.org/t/p/w500/f89U3ADr1oiB1s9GkdPOEpXUk5H.jpg", rating: 8.7, list: science_fiction },
  { title: "Blade Runner 2049", overview: "A young blade runner discovers a long-buried secret that could plunge society into chaos.", poster_url: "https://image.tmdb.org/t/p/w500/gajva4ntzmgRCCLIe2GKzIzKAZx.jpg", rating: 8.0, list: science_fiction },
  { title: "Arrival", overview: "A linguist is recruited by the military to communicate with alien lifeforms after twelve mysterious spacecraft appear around the world.", poster_url: "https://image.tmdb.org/t/p/w500/x2FJsf1ElAgr63Y3PNPtJrcmpoe.jpg", rating: 7.9, list: science_fiction },
  { title: "2001: A Space Odyssey", overview: "After discovering a mysterious artifact, humanity embarks on a journey to Jupiter with the help of an AI named HAL 9000.", poster_url: "https://image.tmdb.org/t/p/w500/ve72VxNqsuElbHFNABHSEHF9Nho.jpg", rating: 8.3, list: science_fiction },
  { title: "The Martian", overview: "An astronaut becomes stranded on Mars and must find a way to survive while NASA works to bring him home.", poster_url: "https://image.tmdb.org/t/p/w500/5BHuvQ6p9kfc091Z8RiFNhCwL4b.jpg", rating: 8.0, list: science_fiction },
  { title: "Ex Machina", overview: "A programmer is selected to participate in a ground-breaking experiment in artificial intelligence.", poster_url: "https://image.tmdb.org/t/p/w500/btOb5dPLHxDKOIRKUqSrUhYZBUI.jpg", rating: 7.7, list: science_fiction },
  { title: "Dune", overview: "A noble family becomes embroiled in a war for control over the galaxy's most valuable asset.", poster_url: "https://image.tmdb.org/t/p/w500/d5NXSklpcKN6tvEm3b7HBQ0cFf7.jpg", rating: 8.0, list: science_fiction },
  { title: "Gravity", overview: "Two astronauts work together to survive after an accident leaves them stranded in space.", poster_url: "https://image.tmdb.org/t/p/w500/44FbWhGHkBMQk51AHLpSRNsQjdE.jpg", rating: 7.7, list: science_fiction },

  # Action
  { title: "The Dark Knight", overview: "When the Joker wreaks havoc on Gotham, Batman must accept one of the greatest psychological tests of his ability to fight injustice.", poster_url: "https://image.tmdb.org/t/p/w500/qJ2tW6WMUDux911r6m7haRef0WH.jpg", rating: 9.0, list: action },
  { title: "Mad Max: Fury Road", overview: "In a post-apocalyptic wasteland, a woman rebels against a tyrannical ruler in search of her homeland.", poster_url: "https://image.tmdb.org/t/p/w500/hA2ple9q4qnwxp3hKVNhroipsir.jpg", rating: 8.1, list: action },
  { title: "John Wick", overview: "An ex-hitman comes out of retirement to track down the gangsters that killed his dog and took his car.", poster_url: "https://image.tmdb.org/t/p/w500/fZPSd91yGE9fCcCe6OoQr6E3Bev.jpg", rating: 7.4, list: action },
  { title: "Top Gun: Maverick", overview: "After more than thirty years of service, Pete Mitchell is where he belongs, pushing the envelope as a top naval aviator.", poster_url: "https://image.tmdb.org/t/p/w500/62HCnUTHOwhile9IvNvHaocqnp.jpg", rating: 8.3, list: action },
  { title: "Die Hard", overview: "An off-duty cop tries to save hostages taken by terrorists in a Los Angeles skyscraper.", poster_url: "https://image.tmdb.org/t/p/w500/yFihWxQcmqcaBR31QM6Y8gT6aYV.jpg", rating: 8.2, list: action },
  { title: "Mission Impossible: Fallout", overview: "Ethan Hunt and his IMF team race against time after a mission gone wrong.", poster_url: "https://image.tmdb.org/t/p/w500/AkJQpZp9WoNdj7pLYSj1L0RcMMN.jpg", rating: 7.7, list: action },
  { title: "The Raid", overview: "A SWAT team becomes trapped in a tenement run by a ruthless mobster and his army of killers.", poster_url: "https://image.tmdb.org/t/p/w500/a3Hm5MRgs6czYFkDHBqHkLPKFDO.jpg", rating: 7.6, list: action },
  { title: "Gladiator", overview: "A former Roman General sets out to exact vengeance against the corrupt emperor who murdered his family.", poster_url: "https://image.tmdb.org/t/p/w500/ty8TGRuvJLPUmAR1H1nRIsgwvim.jpg", rating: 8.5, list: action },
  { title: "Heat", overview: "A group of professional bank robbers start to feel the heat from police when they unknowingly leave a clue.", poster_url: "https://image.tmdb.org/t/p/w500/zMyfPUelumio3tiDKPffaUpsQTD.jpg", rating: 8.2, list: action },
  { title: "Kill Bill: Volume 1", overview: "After awakening from a coma, a former assassin seeks revenge against her former boss and his team.", poster_url: "https://image.tmdb.org/t/p/w500/v7TaX8kXMXs5yFFGR41guUDNcnB.jpg", rating: 8.1, list: action },

  # Drame
  { title: "The Shawshank Redemption", overview: "Two imprisoned men bond over years, finding solace and eventual redemption through acts of common decency.", poster_url: "https://image.tmdb.org/t/p/w500/q6y0Go1tsGEsmtFryDOJo3dEmqu.jpg", rating: 9.3, list: drame },
  { title: "Forrest Gump", overview: "Historical events unfold from the perspective of an Alabama man with an IQ of 75.", poster_url: "https://image.tmdb.org/t/p/w500/arw2vcBveWOVZr6pxd9XTd1TdQa.jpg", rating: 8.8, list: drame },
  { title: "Schindler's List", overview: "In German-occupied Poland during World War II, industrialist Oskar Schindler grieves for his Jewish workforce.", poster_url: "https://image.tmdb.org/t/p/w500/sF1U4EUQS8YHUYjNl3pMGNIQyr0.jpg", rating: 9.0, list: drame },
  { title: "Fight Club", overview: "An insomniac office worker and a devil-may-care soap maker form an underground fight club.", poster_url: "https://image.tmdb.org/t/p/w500/pB8BM7pdSp6B6Ih7QZ4DrQ3PmJK.jpg", rating: 8.8, list: drame },
  { title: "Good Will Hunting", overview: "A janitor at MIT has a gift for mathematics but needs help from a psychologist to find direction in his life.", poster_url: "https://image.tmdb.org/t/p/w500/bABCBKYBK7A5G1x0L7bpTcRpU5R.jpg", rating: 8.3, list: drame },
  { title: "A Beautiful Mind", overview: "After a brilliant but asocial mathematician accepts secret work in cryptography, his life takes a turn.", poster_url: "https://image.tmdb.org/t/p/w500/2WXopdhPDCEnhzMSGDXb2pLNFmW.jpg", rating: 8.2, list: drame },
  { title: "The Green Mile", overview: "The lives of guards on Death Row are affected by one of their prisoners, a gentle giant with a mysterious gift.", poster_url: "https://image.tmdb.org/t/p/w500/velWPhVN9daQMJ8oRiROJMGBpAG.jpg", rating: 8.6, list: drame },
  { title: "Whiplash", overview: "A promising young drummer enrolls at a music conservatory where he is mentored by an abusive instructor.", poster_url: "https://image.tmdb.org/t/p/w500/7fn624j5lj3xTme2SgiLCeuedmO.jpg", rating: 8.5, list: drame },
  { title: "12 Angry Men", overview: "A jury holdout attempts to prevent a miscarriage of justice by forcing his colleagues to reconsider the evidence.", poster_url: "https://image.tmdb.org/t/p/w500/ppd84D2i9W8jXmsyInGyihiSyqz.jpg", rating: 9.0, list: drame },
  { title: "Parasite", overview: "Greed and class discrimination threaten the newly formed symbiotic relationship between the wealthy Park family and the poor Kim clan.", poster_url: "https://image.tmdb.org/t/p/w500/7IiTTgloJzvGI1TAYymCfbfl3vT.jpg", rating: 8.5, list: drame },

  # Crime
  { title: "Pulp Fiction", overview: "The lives of two mob hitmen, a boxer, a gangster and his wife intertwine in four tales of violence and redemption.", poster_url: "https://image.tmdb.org/t/p/w500/d5iIlFn5s0ImszYzBPb8JPIfbXD.jpg", rating: 8.9, list: crime },
  { title: "The Godfather", overview: "The aging patriarch of an organized crime dynasty transfers control of his empire to his reluctant son.", poster_url: "https://image.tmdb.org/t/p/w500/3bhkrj58Vtu7enYsLegHnDmsnId.jpg", rating: 9.2, list: crime },
  { title: "The Godfather Part II", overview: "The early life and career of Vito Corleone is portrayed while his son Michael expands and tightens his grip on the family crime syndicate.", poster_url: "https://image.tmdb.org/t/p/w500/hek3koDUyRQk7FIhPXsa6mT2Zc3.jpg", rating: 9.0, list: crime },
  { title: "Goodfellas", overview: "The story of Henry Hill and his life in the mob, covering his relationship with his wife and his mob partners.", poster_url: "https://image.tmdb.org/t/p/w500/aKuFiU82s5ISJpGZp7YkIr3kCUd.jpg", rating: 8.7, list: crime },
  { title: "The Departed", overview: "An undercover cop and a mole in the police attempt to identify each other while infiltrating an Irish gang.", poster_url: "https://image.tmdb.org/t/p/w500/nT97ifVT2J1yMQmeq20Qblg61T.jpg", rating: 8.5, list: crime },
  { title: "Scarface", overview: "In 1980 Miami, a determined Cuban immigrant takes over a drug cartel and succumbs to greed.", poster_url: "https://image.tmdb.org/t/p/w500/iQ5ztdjvteGeboxtmRdXEChJOHh.jpg", rating: 8.3, list: crime },
  { title: "No Country for Old Men", overview: "Violence and mayhem ensue after a hunter stumbles upon a drug deal gone wrong and more than two million dollars in cash.", poster_url: "https://image.tmdb.org/t/p/w500/6dio7CdGMNZKnfFjHMPBWvFfpNa.jpg", rating: 8.2, list: crime },
  { title: "Reservoir Dogs", overview: "When a simple jewelry heist goes wrong, the surviving criminals begin to suspect that one of them is a police informant.", poster_url: "https://image.tmdb.org/t/p/w500/xi8Iu6qyTfyZVDVy60raIOYJJmk.jpg", rating: 8.3, list: crime },
  { title: "Prisoners", overview: "When Keller Dover's daughter and her friend go missing, he takes matters into his own hands as a detective works the case.", poster_url: "https://image.tmdb.org/t/p/w500/iLIINFMsS5MkSL99MSyBXbFjJZ7.jpg", rating: 8.1, list: crime },
  { title: "Zodiac", overview: "A cartoonist becomes an amateur detective obsessed with tracking down the Zodiac Killer.", poster_url: "https://image.tmdb.org/t/p/w500/qCzFGM2KGKeq9Bi1OlHLLiGBOYT.jpg", rating: 7.7, list: crime }
]

movies.each do |movie_attrs|
  Movie.create!(movie_attrs)
end

puts "✅ #{Movie.count} movies created successfully!"
