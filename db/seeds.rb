User.destroy_all
Mural.destroy_all
Favorite.destroy_all

# -------------Users-------------
user_one = User.create(first_name: "Ricky", last_name: "Jones")
user_two = User.create(first_name: "Lady", last_name: "Time")
user_three = User.create(first_name: "Bob", last_name: "Ross")
user_four = User.create(first_name: "George", last_name: "Glass")

# -------------Murals-------------
mural_one = Mural.create(artist_id: User.all.sample.id, mural_title: "Mural Title One", year_installed: 1983, description: "This is a short description", artists: "Liza, BearChamp")

mural_two = Mural.create(artist_id: User.all.sample.id, mural_title: "Mural Title Two", year_installed: 2000, description: "This will be a medium descrption, so just a little longer than a short one.", artists: "NoArray")

mural_three = Mural.create(artist_id: User.all.sample.id, mural_title: "Mural Title Three", year_installed: 2020, description: "This description will be longer, to make a difference for the eyeballs. Let's just make this a little bit longer. This looks good.", artists: "Kozmo, Phillipe")

mural_four = Mural.create(artist_id: User.all.sample.id, mural_title: "Mural Title Four", year_installed: 1929, description: "Cool", artists: "Bob Ross")



# -------------Favorites-------------
favorite_one = Favorite.create(user_id: user_one.id, mural_id: mural_three.id)
favorite_two = Favorite.create(user_id: user_one.id, mural_id: mural_two.id)
favorite_three = Favorite.create(user_id: user_one.id, mural_id: mural_four.id)

favorite_three = Favorite.create(user_id: user_two.id, mural_id: mural_four.id)
favorite_four = Favorite.create(user_id: user_two.id, mural_id: mural_two.id)

favorite_four = Favorite.create(user_id: user_three.id, mural_id: mural_one.id)
