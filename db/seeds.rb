# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
UserGame.destroy_all
Membership.destroy_all
Group.destroy_all
Game.destroy_all
User.destroy_all

puts "Creating default users..."

pierre = User.create!(
  username: "pagehey",
  photo: File.open(Rails.root.join("db/fixtures/users/pierre.jpg")),
  biography: "J'aime les jeux d'acion et realiser de grosse performance en e-gaming",
  punch_line: "Go Go Go! on les degomme!",
  language: "fr",
  birthdate: "1989-10-6",
  interest_pve_pvp: "PVP",
  interest_action_strat: "Action",
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
  interest_action_strat: "Strategy",
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
  interest_action_strat: "Strategy",
  interest_gameplay_story: "Story",
  interest_compet_chill: "Chill",
  interest_mmo_smallteam: "SmallTeam",
  email: "fred@gmail.com",
  password: "azerty"
)
guillaume = User.create!(
  username: "Piccolo",
  photo: File.open(Rails.root.join("db/fixtures/users/guillaume.jpg")),
  biography:"Certains crois que je suis proffesseur mais que je suis un tueur in game/
  vous allez voir que c'est moi le meilleur",
  punch_line: "There can be only one!",
  language: "fr",
  birthdate: "1982-4-5",
  interest_pve_pvp: "PVP",
  interest_action_strat: "Strategy",
  interest_gameplay_story: "Gameplay",
  interest_compet_chill: "Chill",
  interest_mmo_smallteam: "MMO",
  email: "guillaume@gmail.com",
  password: "azerty"
)
thomas = User.create!(
  username: "Leroutard",
  photo: File.open(Rails.root.join("db/fixtures/users/thomas.jpg")),
  biography: "J'aime explorer et taper des monstres",
  punch_line: "On trace la route!",
  language: "fr",
  birthdate: "1998-2-7",
  interest_pve_pvp: "PVP",
  interest_action_strat: "Action",
  interest_gameplay_story: "Story",
  interest_compet_chill: "Compet",
  interest_mmo_smallteam: "SmallTeam",
  email: "thomas@gmail.com",
  password: "azerty"
)
nico = User.create!(
  username: "bulbizarre",
  photo: File.open(Rails.root.join("db/fixtures/users/nico.jpg")),
  biography: "J'aime beaucoup explorer et capturer des monstres",
  punch_line: "Vers l'infini...",
  language: "fr",
  birthdate: "1981-3-9",
  interest_pve_pvp: "PVE",
  interest_action_strat: "Strategy",
  interest_gameplay_story: "Story",
  interest_compet_chill: "Compet",
  interest_mmo_smallteam: "MMO",
  email: "nico@gmail.com",
  password: "azerty"
)
cecile = User.create!(
  username: "cardgirl",
  photo: File.open(Rails.root.join("db/fixtures/users/nico.jpg")),
  biography: "J'aime les series ",
  punch_line: "Vers l'infini...",
  language: "fr",
  birthdate: "1981-3-9",
  interest_pve_pvp: "PVE",
  interest_action_strat: "Strategy",
  interest_gameplay_story: "Story",
  interest_compet_chill: "Compet",
  interest_mmo_smallteam: "MMO",
  email: "cecile@gmail.com",
  password: "azerty"
)
charlotte = User.create!(
  username: "mimi16",
  photo: File.open(Rails.root.join("db/fixtures/users/mimi16.jpg")),
  biography: "Je suis une hardcore gameuse, venez me defier",
  punch_line: "No one can dedeat me!",
  language: "fr",
  birthdate: "1998-6-14",
  interest_pve_pvp: "PVP",
  interest_action_strat: "Action",
  interest_gameplay_story: "Gameplay",
  interest_compet_chill: "Compet",
  interest_mmo_smallteam: "SmallTeam",
  email: "charlotte@gmail.com",
  password: "azerty"
)
franck = User.create!(
  username: "swirl",
  photo: File.open(Rails.root.join("db/fixtures/users/swirl.png")),
  biography: "Je suis la tete pensante des groupes, avec une grosse experience des jeux de strategy.",
  punch_line: "Don't drop me",
  language: "fr",
  birthdate: "1996-2-25",
  interest_pve_pvp: "PVE",
  interest_action_strat: "Strategy",
  interest_gameplay_story: "Gameplay",
  interest_compet_chill: "Compet",
  interest_mmo_smallteam: "MMO",
  email: "franck@gmail.com",
  password: "azerty"
)
anthony = User.create!(
  username: "antho29",
  photo: File.open(Rails.root.join("db/fixtures/users/anthon29.jpg")),
  biography: "Je suis surtout connecté tard le soir, n'hesitez pas à me grouper ingame",
  punch_line: "never sleep",
  language: "fr",
  birthdate: "1999-12-25",
  interest_pve_pvp: "PVE",
  interest_action_strat: "Strategy",
  interest_gameplay_story: "Story",
  interest_compet_chill: "Chill",
  interest_mmo_smallteam: "MMO",
  email: "anthony@gmail.com",
  password: "azerty"
)
julien = User.create!(
  username: "xl-julien",
  photo: File.open(Rails.root.join("db/fixtures/users/xl-julien.jpg")),
  biography: "Je suis sur de nombreux, mais à la recherche d'une bonne team ou d'une guilde",
  punch_line: "I'll be back",
  language: "fr",
  birthdate: "1978-2-15",
  interest_pve_pvp: "PVE",
  interest_action_strat: "Action",
  interest_gameplay_story: "Story",
  interest_compet_chill: "Compet",
  interest_mmo_smallteam: "MMO",
  email: "julien@gmail.com",
  password: "azerty"
)
kevin = User.create!(
  username: "kevin91",
  photo: File.open(Rails.root.join("db/fixtures/users/kevin91.jpg")),
  biography: "Je suis surtout connecté tard le soir, n'hesitez pas à me grouper ingame",
  punch_line: "never sleep",
  language: "fr",
  birthdate: "1999-12-25",
  interest_pve_pvp: "PVP",
  interest_action_strat: "Action",
  interest_gameplay_story: "Story",
  interest_compet_chill: "Chill",
  interest_mmo_smallteam: "MMO",
  email: "kevin@gmail.com",
  password: "azerty"
)

puts "Creating default game..."

game_pc_warframe = Game.create!(
  name: "Warframe",
  platform: "PC",
  year: "2014",
  genre: "TPS",
  photo: File.open(Rails.root.join("db/fixtures/games/warframe.png"))
)
game_pc_guildwars2 = Game.create!(
  name: "Guild Wars II",
  platform: "PC",
  year: "2015",
  genre: "MMO",
  photo: File.open(Rails.root.join("db/fixtures/games/gw2.jpg"))
)
game_pc_summonerswars = Game.create!(
  name: "Summoners Wars",
  platform: "PC",
  year: "2016",
  genre: "TBS",
  photo: File.open(Rails.root.join("db/fixtures/games/sws.jpg"))
)
game_xboxone_halo5 = Game.create!(
  name: "Halo: Guardians",
  platform: "XboxOne",
  year: "2015",
  genre: "FPS",
  photo: File.open(Rails.root.join("db/fixtures/games/halo5.jpg"))
)
game_pc_dontstarve = Game.create!(
  name: "Don't Starve: Together",
  platform: "PC",
  year: "2016",
  genre: "Survival",
  photo: File.open(Rails.root.join("db/fixtures/games/dst.jpg"))
)
game_ps4_dontstarve = Game.create!(
  name: "Don't Starve: Together",
  platform: "PS4",
  year: "2016",
  genre: "Survival",
  photo: File.open(Rails.root.join("db/fixtures/games/dst.jpg"))
)
  game_xboxone_dontstarve = Game.create!(
  name: "Don't Starve: Together",
  platform: "XboxOne",
  year: "2016",
  genre: "Survival",
  photo: File.open(Rails.root.join("db/fixtures/games/dst.jpg"))
)
game_xboxone_divinity = Game.create!(
  name: "Divinity: Original Sin II",
  platform: "XboxOne",
  year: "2017",
  genre: "RPG",
  photo: File.open(Rails.root.join("db/fixtures/games/divinity2.jpg"))
)
game_xboxone_halowars2 = Game.create!(
  name: "Halo Wars 2",
  platform: "XboxOne",
  year: "2017",
  genre: "STR",
  photo: File.open(Rails.root.join("db/fixtures/games/halowars2.jpg"))
)
game_ps4_destiny = Game.create!(
  name: "Destiny 2",
  platform: "PS4",
  year: "2017",
  genre: "FPS",
  photo: File.open(Rails.root.join("db/fixtures/games/destiny2.jpg"))
)
game_xboxone_forzahorizon = Game.create!(
  name: "Forza Horizon 3",
  platform: "XboxOne",
  year: "2017",
  genre: "Racing",
  photo: File.open(Rails.root.join("db/fixtures/games/forza.jpg"))
)
game_pc_forzahorizon = Game.create!(
  name: "Forza Horizon 3",
  platform: "PC",
  year: "2017",
  genre: "Racing",
  photo: File.open(Rails.root.join("db/fixtures/games/forza.jpg"))
)
game_pc_diablo3 = Game.create!(
  name: "Diablo III",
  platform: "PC",
  year: "2012",
  genre: "Hack n slash",
  photo: File.open(Rails.root.join("db/fixtures/games/diablo3.jpg"))
)
game_ps4_diablo3 = Game.create!(
  name: "Diablo III",
  platform: "PS4",
  year: "2014",
  genre: "Hack n slash",
  photo: File.open(Rails.root.join("db/fixtures/games/diablo3.jpg"))
)

puts "Creating users / games links ..."

user_game_1 = UserGame.new(
  user: fred,
  game: game_pc_warframe
)
user_game_1.save!
user_game_2 = UserGame.new(
  user: fred,
  game: game_pc_guildwars2
)
user_game_2.save!
user_game_3 = UserGame.new(
  user: fred,
  game: game_pc_summonerswars
)
user_game_3.save!
user_game_4 = UserGame.new(
  user: thibault,
  game: game_pc_summonerswars
)
user_game_4.save!
user_game_5 = UserGame.new(
  user: pierre,
  game: game_xboxone_halowars2
)
user_game_5.save!
user_game_6 = UserGame.new(
  user: guillaume,
  game: game_xboxone_halowars2
)
user_game_6.save!
user_game_7 = UserGame.new(
  user: thibault,
  game: game_xboxone_halowars2
)
user_game_7.save!
user_game_8 = UserGame.new(
  user: pierre,
  game: game_pc_diablo3
)
user_game_8.save!
user_game_9 = UserGame.new(
  user: guillaume,
  game: game_pc_diablo3
)
user_game_9.save!
user_game_10 = UserGame.new(
  user: thibault,
  game: game_pc_diablo3
)
user_game_10.save!
user_game_11 = UserGame.new(
  user: fred,
  game: game_pc_diablo3
)
user_game_11.save!
user_game_12 = UserGame.new(
  user: thomas,
  game: game_pc_guildwars2
)
user_game_12.save!
user_game_13 = UserGame.new(
  user: nico,
  game: game_pc_guildwars2
)
user_game_13.save!
user_game_14 = UserGame.new(
  user: fred,
  game: game_pc_dontstarve
)
user_game_14.save!
user_game_15 = UserGame.new(
  user: thomas,
  game: game_pc_dontstarve
)
user_game_15.save!
user_game_16 = UserGame.new(
  user: nico,
  game: game_pc_dontstarve
)
user_game_16.save!
user_game_17 = UserGame.new(
  user: thibault,
  game: game_pc_dontstarve
)
user_game_17.save!
user_game_18 = UserGame.new(
  user: pierre,
  game: game_pc_dontstarve
)
user_game_18.save!

user_game_19 = UserGame.new(
  user: charlotte,
  game: game_xboxone_halo5
)
user_game_19.save!

user_game_20 = UserGame.new(
  user: franck,
  game: game_xboxone_halo5
)
user_game_20.save!

user_game_21 = UserGame.new(
  user: kevin,
  game: game_xboxone_halo5
)
user_game_21.save!

user_game_22 = UserGame.new(
  user: anthony,
  game: game_xboxone_halo5
)
user_game_22.save!

user_game_23 = UserGame.new(
  user: julien,
  game: game_xboxone_halo5
)
user_game_23.save!

user_game_24 = UserGame.new(
  user: julien,
  game: game_pc_dontstarve
)
user_game_24.save!

user_game_25 = UserGame.new(
  user: thibault,
  game: game_xboxone_halo5
)
user_game_25.save!

user_game_26 = UserGame.new(
  user: pierre,
  game: game_xboxone_halo5
)
user_game_26.save!



puts "Creating groups..."

group_1 = Group.create!(
  game: game_pc_summonerswars,
  leader: thibault,
  name: "Labyrinth-Exploration",
  description: "Let's kill Tartaros",
  photo: File.open(Rails.root.join("db/fixtures/games/sws.jpg"))
)
group_2 = Group.create!(
  game: game_xboxone_halowars2,
  leader: pierre,
  name: "Shoot them all",
  description: "Pas de cheat içi, on couvre son voisin, ok?",
  photo: File.open(Rails.root.join("db/fixtures/games/halowars2.jpg"))
)
group_3 = Group.create!(
  game: game_pc_diablo3,
  leader: guillaume,
  name: "Sortie stuff high level",
  description: "Hey! Ici on farm surtout les failles sup (70-80 environ). l'objectif est de créer une équipe qui puisse farmer rapidement et efficacement, avec si possible des membres dispo relativement souvent (soirs et weekend). L'objectif utlime est de renforcer le stuff pour monter failles 90; voir atteidnre 100 si on est chaud :) Hésitez pas à rejoindre si vous êtes motivés !",
  photo: File.open(Rails.root.join("db/fixtures/games/diablo3.jpg"))
)
group_4 = Group.create!(
  game: game_pc_guildwars2,
  leader: nico,
  name: "On explore pepere",
  description: "Ramassez des pierres les gens pour le hall de guilde svp merci",
  photo: File.open(Rails.root.join("db/fixtures/games/gw2.jpg"))
)
group_5 = Group.create!(
  game: game_pc_dontstarve,
  leader: fred,
  name: "On passe l'hiver seulement",
  description: "camp au nord ouest du carrefour du portail",
  photo: File.open(Rails.root.join("db/fixtures/games/dst.jpg"))
)
game_xboxone_halo5
group_6 = Group.create!(
  game: game_xboxone_halo5,
  leader: anthony,
  name: "Juste pour trasher tout le monde",
  description: "On reste au bord de la map svp",
  photo: File.open(Rails.root.join("db/fixtures/games/halo5.jpg"))
)
group_7 = Group.create!(
  game: game_xboxone_halo5,
  leader: franck,
  name: "On UP ce foutu classement",
  description: "methode stealth et on trash si on est decouvert",
  photo: File.open(Rails.root.join("db/fixtures/games/halo5.jpg"))
)

puts "Creating membership...."

user_membership_1 = Membership.new(
  user: fred,
  group: group_1,
  status: "pending",
  message: "salut les gars, je suis bon, pls accept!"
)
user_membership_1.save!
user_membership_2 = Membership.new(
  user: thibault,
  group: group_2,
  status: "accepted",
  message: "Je veux shooter moi aussi!"
)
user_membership_2.save!
user_membership_3 = Membership.new(
  user: fred,
  group: group_3,
  status: "pending",
  message: "Je veux farmer moi aussi!"
)
user_membership_3.save!
user_membership_4 = Membership.new(
  user: pierre,
  group: group_3,
  status: "pending",
  message: "moi aussi j'ai besoin d'un meilleur stuff!"
)
user_membership_4.save!
user_membership_5 = Membership.new(
  user: thibault,
  group: group_5,
  status: "accepted",
  message: "J'ai froid, je reste au camp"
)
user_membership_5.save!
user_membership_6 = Membership.new(
  user: pierre,
  group: group_5,
  status: "accepted",
  message: "mon sac est plein, je ramene du bois"
)
user_membership_6.save!
user_membership_7 = Membership.new(
  user: thomas,
  group: group_5,
  status: "accepted",
  message: "c'est bientot la pleine lune, ou est le gloomer?"
)
user_membership_7.save!
user_membership_8 = Membership.new(
  user: thibault,
  group: group_1,
  status: "accepted",
  message: "C'est moi le leader"
)
user_membership_8.save!
user_membership_9 = Membership.new(
  user: pierre,
  group: group_2,
  status: "accepted",
  message: "C'est moi le leader"
)
user_membership_9.save!
user_membership_10 = Membership.new(
  user: guillaume,
  group: group_3,
  status: "accepted",
  message: "C'est moi le leader"
)
user_membership_10.save!
user_membership_11 = Membership.new(
  user: nico,
  group: group_4,
  status: "accepted",
  message: "C'est moi le leader"
)
user_membership_11.save!

user_membership_12 = Membership.new(
  user: fred,
  group: group_5,
  status: "accepted",
  message: "C'est moi le leader"
)
user_membership_12.save!

user_membership_13 = Membership.new(
  user: franck,
  group: group_6,
  status: "accepted",
  message: "C'est moi le leader"
)
user_membership_13.save!

user_membership_14 = Membership.new(
  user: charlotte,
  group: group_6,
  status: "accepted",
  message: "On va se les faire"
)
user_membership_14.save!

user_membership_15 = Membership.new(
  user: kevin,
  group: group_6,
  status: "accepted",
  message: "on reste groupe svp"
)
user_membership_15.save!

user_membership_16 = Membership.new(
  user: julien,
  group: group_7,
  status: "accepted",
  message: "C'est moi le leader"
)
user_membership_16.save!

user_membership_17 = Membership.new(
  user: pierre,
  group: group_7,
  status: "accepted",
  message: "on va tout dechirer"
)
user_membership_17.save!

user_membership_18 = Membership.new(
  user: thibault,
  group: group_7,
  status: "accepted",
  message: "On va gagner"
)
user_membership_18.save!

puts "Creating events...."

event_1 = Event.new(
  group: group_3,
  status: "pendding",
  title: "truc",
  description: "salut les gars, je suis bon, pls accept!",
)

event_2 = Event.new(
  group: group_3,
  status: "pendding",
  title: "truc",
  description: "salut les gars, je suis bon, pls accept!",
)

event_3 = Event.new(
  group: group_3,
  status: "pendding",
  title: "truc",
  description: "salut les gars, je suis bon, pls accept!",
)

puts "Seeds finished!"
