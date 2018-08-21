# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
User.destroy_all
Game.destroy_all
Group.destroy_all
Membership.destroy_all
UserGame.destroy_all


puts "Creating default users..."

pierre = User.create!(
  username: "pagehey",
  photo: File.open(Rails.root.join("db/fixtures/users/pierre.jpg")),
  biography: "J'aime les jeux d'acion et realiser de grosse performance en e-gaming",
  punch_line: "Go Go Go! on les degomme!",
  language: "fr",
  birthdate: "1989-10-06",
  interest_pve_pvp: "PVP",
  interest_action_strat: "FPS",
  interest_gameplay_story: "Story",
  interest_compet_chill: "Compet",
  interest_mmo_smallteam: "SmallTeam",
  email: "pierre@gmail.com",
  password: "azerty"
)
thibault = User.create!(
  username: "La gachette",
  photo: File.open(Rails.root.join("db/fixtures/users/thibault.jpg")),
  biography: "Je suis un être etrange mais créatif. J'aime construire, collectionner/
  et montrer mes chefs d'oeuvre. Validez mes esquisses et je serai votre ami!",
  punch_line: "Quand c'est beau, c'est thibault.",
  language: "fr",
  birthdate: "1985-6-16",
  interest_pve_pvp: "PVE",
  interest_action_strat: "STR",
  interest_gameplay_story: "Gameplay",
  interest_compet_chill: "Chill",
  interest_mmo_smallteam: "MMO",
  email: "thibault@gmail.com",
  password: "azerty"
)
fred = User.create!(
  username: "Frodo_dodo",
  photo: File.open(Rails.root.join("db/fixtures/users/fred.jpg")),
  biography:"J'ai jamais le temps de jouer, c'est pas juste, même en prenant sur /
  mes heures de sommeils. Allez montrez moi ce que vous valez!",
  punch_line: "J'ai hate de jouer!",
  language: "fr",
  birthdate: "1979-8-7",
  interest_pve_pvp: "PVE",
  interest_action_strat: "STR",
  interest_gameplay_story: "Story",
  interest_compet_chill: "Chill",
  interest_mmo_smallteam: "SmallTeam",
  email: "fred@gmail.com",
  password: "azerty"
)
guillaume = User.create!(
  username: "Piccolo",
  photo: File.open(Rails.root.join("db/fixtures/users/guillaume.jpg")),
  biography:"Ceratins crois que je suis proffesseur mais que je suis un tueur in game/
  vous allez voir que c'est moi le meilleur",
  punch_line: "There can be only one!",
  language: "fr",
  birthdate: "1982-4-5",
  interest_pve_pvp: "PVP",
  interest_action_strat: "STR",
  interest_gameplay_story: "Gameplay",
  interest_compet_chill: "Chill",
  interest_mmo_smallteam: "MMO",
  email: "guillaume@gmail.com",
  password: "azerty"
)

puts "Creating default game..."

game_pc_warframe = Game.create!(
  name: "Warframe",
  platform: "PC",
  year: "2014",
  genre: "TPS",
  photo: File.open(Rails.root.join("db/fixtures/games/warframe.jpg"))
)
game_pc_guildwars2 = Game.create!(
  name: "Guildwars2",
  platform: "PC",
  year: "2015",
  genre: "MMO",
  photo: File.open(Rails.root.join("db/fixtures/games/gw2.jpg"))
)
game_tablet_summonerswars = Game.create!(
  name: "Summoners_Wars",
  platform: "Tablet",
  year: "2016",
  genre: "TBS",
  photo: File.open(Rails.root.join("db/fixtures/games/sws.png"))
)
game_xbox_halo1 = Game.create!(
  name: "halo1",
  platform: "Xbox",
  year: "2001",
  genre: "FPS",
  photo: File.open(Rails.root.join("db/fixtures/games/halo.jpg"))
)
game_pc_halo1 = Game.create!(
  name: "halo1",
  platform: "PC",
  year: "2002",
  genre: "FPS",
  photo: File.open(Rails.root.join("db/fixtures/games/halo.jpg"))
)
game_xbox360_halo1 = Game.create!(
  name: "halo1",
  platform: "Xbox360",
  year: "2007",
  genre: "FPS",
  photo: File.open(Rails.root.join("db/fixtures/games/halo.jpg"))
)
game_xboxone_halowars2 = Game.create!(
  name: "halowars2",
  platform: "XboxOne",
  year: "2017",
  genre: "STR",
  photo: File.open(Rails.root.join("db/fixtures/games/halowars2.png"))
)
game_xbox_halo2 = Game.create!(
  name: "halo2",
  platform: "Xbox",
  year: "2004",
  genre: "FPS",
  photo: File.open(Rails.root.join("db/fixtures/games/halo2.jpg"))
)
game_xbox360_halo3 = Game.create!(
  name: "halo3",
  platform: "Xbox360",
  year: "2007",
  genre: "FPS",
  photo: File.open(Rails.root.join("db/fixtures/games/halo3.jpg"))
)
game_pc_diablo3 = Game.create!(
  name: "diablo3",
  platform: "PC",
  year: "2012",
  genre: "Hack n slash",
  photo: File.open(Rails.root.join("db/fixtures/games/diablo3.jpg"))
)
game_ps3_diablo3 = Game.create!(
  name: "diablo3",
  platform: "PS3",
  year: "2013",
  genre: "Hack n slash",
  photo: File.open(Rails.root.join("db/fixtures/games/diablo3.jpg"))
)

puts "Creating users / games links ..."

user_game_1 = UserGame.new(
  user: fred,
  game: game_pc_warframe
)
user_game_2 = UserGame.new(
  user: fred,
  game: game_pc_guildwars2
)
user_game_3 = UserGame.new(
  user: fred,
  game: game_tablet_summonerswars
)
user_game_4 = UserGame.new(
  user: thibault,
  game: game_tablet_summonerswars
)
user_game_5 = UserGame.new(
  user: pierre,
  game: game_xboxone_halowars2
)
user_game_6 = UserGame.new(
  user: guillaume,
  game: game_xboxone_halowars2
)
user_game_7 = UserGame.new(
  user: thibault,
  game: game_xboxone_halowars2
)
user_game_8 = UserGame.new(
  user: pierre,
  game: game_pc_diablo3
)
user_game_9 = UserGame.new(
  user: guillaume,
  game: game_pc_diablo3
)
user_game_10 = UserGame.new(
  user: thibault,
  game: game_pc_diablo3
)
user_game_11 = UserGame.new(
  user: fred,
  game: game_pc_diablo3
)

puts "Creating groups..."

group_1 = Group.create!(
  game: game_tablet_summonerswars,
  leader: thibault,
  name: "Labyrinth-Exploration",
  description: "Let's kill Tartaros",
  photo: File.open(Rails.root.join("db/fixtures/games/sws.png"))
)
group_2 = Group.create!(
  game: game_xboxone_halowars2,
  leader: pierre,
  name: "Shoot them all",
  description: "Pas de cheat içi, on couvre son voisin, ok?",
  photo: File.open(Rails.root.join("db/fixtures/games/halo.jpg"))
)
group_3 = Group.create!(
  game: game_pc_diablo3,
  leader: guillaume,
  name: "Sortie stuff high level",
  description: "on farm les derniers niveaux faites gaffes",
  photo: File.open(Rails.root.join("db/fixtures/games/diablo3.jpg"))
)

puts "Creating membership...."

user_membership_1 = Membership.new(
  user: fred,
  group: group_1,
  status: "pendding",
  message: "salut les gars, je suis bon, pls accept!"
)
user_membership_2 = Membership.new(
  user: thibault,
  group: group_2,
  status: "pendding",
  message: "Je veux shooter moi aussi!"
)
user_membership_3 = Membership.new(
  user: fred,
  group: group_3,
  status: "pendding",
  message: "Je veux farmer moi aussi!"
)
user_membership_4 = Membership.new(
  user: pierre,
  group: group_3,
  status: "pendding",
  message: "moi aussi j'ai besoin d'un meilleur stuff!"
)

puts "Seeds finished!"
