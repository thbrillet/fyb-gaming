puts "Cleaning database..."
Message.destroy_all
Event.destroy_all
Membership.destroy_all
UserGame.destroy_all
Group.destroy_all
Game.destroy_all
User.destroy_all

puts "Creating default users..."

pierre = User.create!(
  username: "pagehey",
  photo: File.open(Rails.root.join("db/fixtures/users/pierre.jpg")),
  biography: "J'aime les jeux d'action et réaliser de grosse performance en e-gaming./
  si je ne suis pas connecté sous fyb, laissez moi un mp, je vous call after.",
  punch_line: "Go Go Go! on les dégomme!",
  language: "fr",
  birthdate: "1989-10-6",
  interest_pve_pvp: "PVP",
  interest_action_strat: "Action",
  interest_gameplay_story: "Story",
  interest_compet_chill: "Competition",
  interest_mmo_smallteam: "SmallTeam",
  email: "pierre@gmail.com",
  password: "azerty"
)
thibault = User.create!(
  username: "La gachette",
  photo: File.open(Rails.root.join("db/fixtures/users/thibault.jpg")),
  biography: "Mon premier MMO c'est guildwarsI et je suis toujours preneur d'un bon jeu d'aventure./
  S'il y a de la difficulté niveau stratégie pas de problème, je serai des votres./
  J'aime construire, collectionner les items et montrer mes chefs d'oeuvre./
  Attention de n'aime pas les grosses guildes où tout le monde s'engueule, je préfère les petites teams./
  Invitez moi sous fyb et je me présenterai plus en détail, à bientôt in game!",
  punch_line: "Soyons créatifs les gens!",
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
  username: "Frodo_do",
  photo: File.open(Rails.root.join("db/fixtures/users/fred.png")),
  biography:"J'ai jamais le temps de jouer, c'est pas juste, même en prenant sur /
  mes heures de sommeil. Allez, montrez moi ce que vous valez!",
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
  photo: File.open(Rails.root.join("db/fixtures/users/guillaume.png")),
  biography:"Certains crois que je suis professeur mais que je suis un tueur in game/
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
  interest_compet_chill: "Competition",
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
  interest_compet_chill: "Competition",
  interest_mmo_smallteam: "MMO",
  email: "nico@gmail.com",
  password: "azerty"
)
cecile = User.create!(
  username: "cardgirl",
  photo: File.open(Rails.root.join("db/fixtures/users/cecile.jpg")),
  biography: "J'aime les séries sf, je lis pas mal de manga sauf naruto ^^/
  Soyez poli in game, je n'aime pas les relouds grossiers. Coté jeux je suis plutot MMO en ce moment",
  punch_line: "Vers l'infini...",
  language: "fr",
  birthdate: "1981-3-9",
  interest_pve_pvp: "PVE",
  interest_action_strat: "Strategy",
  interest_gameplay_story: "Story",
  interest_compet_chill: "Competition",
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
  interest_action_strat: "Strategy",
  interest_gameplay_story: "Gameplay",
  interest_compet_chill: "Chill",
  interest_mmo_smallteam: "SmallTeam",
  email: "charlotte@gmail.com",
  password: "azerty"
)
franck = User.create!(
  username: "swirl",
  photo: File.open(Rails.root.join("db/fixtures/users/swirl.png")),
  biography: "Je suis la tête pensante des groupes, avec une grosse experience des jeux de strategie.",
  punch_line: "Don't drop me",
  language: "fr",
  birthdate: "1996-2-25",
  interest_pve_pvp: "PVE",
  interest_action_strat: "Strategy",
  interest_gameplay_story: "Gameplay",
  interest_compet_chill: "Chill",
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
  biography: "Je suis sur de nombreux jeux, check my game list. /
  J'en ai marre de soloter, je suis à la recherche d'une bonne team ou d'une guilde.",
  punch_line: "I'll be back",
  language: "fr",
  birthdate: "1978-2-15",
  interest_pve_pvp: "PVE",
  interest_action_strat: "Action",
  interest_gameplay_story: "Story",
  interest_compet_chill: "chill",
  interest_mmo_smallteam: "MMO",
  email: "julien@gmail.com",
  password: "azerty"
)
kevin = User.create!(
  username: "kevin91",
  photo: File.open(Rails.root.join("db/fixtures/users/kevin91.jpg")),
  biography: "Je suis surtout connecté tard le soir, n'hésitez pas à me grouper ingame",
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
jeff = User.create!(
  username: "monster-j",
  photo: File.open(Rails.root.join("db/fixtures/users/jeff.jpg")),
  biography: "J'ai les meilleurs reflexes et c'est moi le plus rapide",
  punch_line: "Flash Reflex",
  language: "fr",
  birthdate: "1985-2-5",
  interest_pve_pvp: "PVE",
  interest_action_strat: "Action",
  interest_gameplay_story: "Story",
  interest_compet_chill: "Chill",
  interest_mmo_smallteam: "SmallTeam",
  email: "jeff@gmail.com",
  password: "azerty"
)
alicia = User.create!(
  username: "dready",
  photo: File.open(Rails.root.join("db/fixtures/users/alicia.png")),
  biography: "J'aime les gens sympas et patients. Pas d'entourloupe avec moi!",
  punch_line: "Je sais écouter moi!",
  language: "fr",
  birthdate: "2003-4-11",
  interest_pve_pvp: "PVE",
  interest_action_strat: "Strategy",
  interest_gameplay_story: "Gameplay",
  interest_compet_chill: "Chill",
  interest_mmo_smallteam: "SmallTeam",
  email: "alicia@gmail.com",
  password: "azerty"
)
 david = User.create!(
  username: "douille",
  photo: File.open(Rails.root.join("db/fixtures/users/david.jpg")),
  biography: "Je dois avoir participé à tout les mmo qui ont été mis en ligne, y compris ceux/
  diffusés en Corée. Alors vient pas me la raconter.",
  punch_line: "Un conseil ou deux?",
  language: "fr",
  birthdate: "1997-11-2",
  interest_pve_pvp: "PVE",
  interest_action_strat: "Strategy",
  interest_gameplay_story: "Gameplay",
  interest_compet_chill: "Competition",
  interest_mmo_smallteam: "MMO",
  email: "david@gmail.com",
  password: "azerty"
)
kim = User.create!(
  username: "kimmy75",
  photo: File.open(Rails.root.join("db/fixtures/users/kim.png")),
  biography: "Je crois que je plais à tout le monde, je ne sais pas pourquoi",
  punch_line: "Un conseil ou deux?",
  language: "fr",
  birthdate: "1984-1-7",
  interest_pve_pvp: "PVP",
  interest_action_strat: "Strategy",
  interest_gameplay_story: "Gameplay",
  interest_compet_chill: "Chill",
  interest_mmo_smallteam: "SmallTeam",
  email: "kim@gmail.com",
  password: "azerty"
)
denton = User.create!(
  username: "81Denton",
  photo: File.open(Rails.root.join("db/fixtures/users/denton.jpg")),
  biography: "Personne ! Personne ne me traite de mauviette ! Ou bien c'est mawashigeri dans ta face !",
  punch_line: "Nom de zeus!",
  language: "fr",
  birthdate: "1979-10-4",
  interest_pve_pvp: "PVE",
  interest_action_strat: "Strategy",
  interest_gameplay_story: "Gameplay",
  interest_compet_chill: "Chill",
  interest_mmo_smallteam: "MMO",
  email: "denton@gmail.com",
  password: "azerty"
)
greg = User.create!(
  username: "Punchman",
  photo: File.open(Rails.root.join("db/fixtures/users/greg.jpg")),
  biography: "Je cogne dur et en face il déboite.",
  punch_line: "kick them all",
  language: "fr",
  birthdate: "1988-11-23",
  interest_pve_pvp: "PVP",
  interest_action_strat: "Strategy",
  interest_gameplay_story: "Gameplay",
  interest_compet_chill: "Chill",
  interest_mmo_smallteam: "SmallTeam",
  email: "greg@gmail.com",
  password: "azerty"
)
john = User.create!(
  username: "Indy",
  photo: File.open(Rails.root.join("db/fixtures/users/john.png")),
  biography: "Je cogne dur et en face il deboite.",
  punch_line: "kick them all",
  language: "fr",
  birthdate: "1998-9-23",
  interest_pve_pvp: "PVE",
  interest_action_strat: "Strategy",
  interest_gameplay_story: "Story",
  interest_compet_chill: "Chill",
  interest_mmo_smallteam: "MMO",
  email: "john@gmail.com",
  password: "azerty"
)
jeanne = User.create!(
  username: "misty",
  photo: File.open(Rails.root.join("db/fixtures/users/misty.png")),
  biography: "Mon premier coup de coeur c'est un MMO, alors si tu en as un à me proposer, je suis partante.",
  punch_line: "Me and You = BOOM",
  language: "fr",
  birthdate: "1986-6-16",
  interest_pve_pvp: "PVE",
  interest_action_strat: "Strategy",
  interest_gameplay_story: "Gameplay",
  interest_compet_chill: "Chill",
  interest_mmo_smallteam: "MMO",
  email: "jeanne@gmail.com",
  password: "azerty"
)
edouard = User.create!(
  username: "o_Vador_o",
  photo: File.open(Rails.root.join("db/fixtures/users/vador.png")),
  biography: "La galaxie est tombée à mes pieds, je vais vous troller la game si ça se passe mal",
  punch_line: "Rejoins l'Empire!",
  language: "fr",
  birthdate: "1981-2-1",
  interest_pve_pvp: "PVE",
  interest_action_strat: "Strategy",
  interest_gameplay_story: "Gameplay",
  interest_compet_chill: "Chill",
  interest_mmo_smallteam: "MMO",
  email: "edouard@gmail.com",
  password: "azerty"
)
claire = User.create!(
  username: "Eclair-Azur",
  photo: File.open(Rails.root.join("db/fixtures/users/tanya.png")),
  biography: "j'aime aider les gens en instance de donjon dans des bons MMO/
  je suis assez douée pour diriger des petits groupes et je suis à fond gameplay",
  punch_line: "Suivez moi!",
  language: "fr",
  birthdate: "1983-7-16",
  interest_pve_pvp: "PVE",
  interest_action_strat: "Strategy",
  interest_gameplay_story: "Gameplay",
  interest_compet_chill: "Chill",
  interest_mmo_smallteam: "MMO",
  email: "claire@gmail.com",
  password: "azerty"
)

mehdi = User.create!(
  username: "El Bourrino",
  photo: File.open(Rails.root.join("db/fixtures/users/bison.png")),
  biography: "Je ne suis pas très patient et j'en ai marre de parler stratégie 107ans/
  bon maintenant j'ai rien contre la stratégie mais de la mesure svp.",
  punch_line: "Fonce dans le tas!",
  language: "fr",
  birthdate: "1989-6-19",
  interest_pve_pvp: "PVE",
  interest_action_strat: "Strategy",
  interest_gameplay_story: "Gameplay",
  interest_compet_chill: "Chill",
  interest_mmo_smallteam: "MMO",
  email: "mehdi@gmail.com",
  password: "azerty"
)
gael = User.create!(
  username: "Killer29",
  photo: File.open(Rails.root.join("db/fixtures/users/gael.png")),
  biography: "Je ne suis pas très patient et j'en ai marre de parler stratégie 107ans/
  bon maintenant j'ai rien contre la stratégie mais de la mesure svp.",
  punch_line: "Fonce dans le tas!",
  language: "fr",
  birthdate: "1989-6-19",
  interest_pve_pvp: "PVP",
  interest_action_strat: "Strategy",
  interest_gameplay_story: "Gameplay",
  interest_compet_chill: "Competition",
  interest_mmo_smallteam: "SmallTeam",
  email: "gael@gmail.com",
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
game_ps4_forzahorizon= Game.create!(
  name: "Forza Horizon 3",
  platform: "PS4",
  year: "2018",
  genre: "Racing",
  photo: File.open(Rails.root.join("db/fixtures/games/forza.jpg"))
)
game_xboxone_halo5 = Game.create!(
  name: "Halo 5: Guardians",
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
game_pc_fornite = Game.create!(
  name: "Fornite",
  platform: "PC",
  year: "2017",
  genre: "Survival",
  photo: File.open(Rails.root.join("db/fixtures/games/fornite.jpg"))
)
game_pc_fornitebattleroyale = Game.create!(
  name: "Fornite Battle Royale",
  platform: "PC",
  year: "2017",
  genre: "FPS",
  photo: File.open(Rails.root.join("db/fixtures/games/fornite-battle-royale.jpg"))
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
  game: game_pc_forzahorizon
)
user_game_3.save!
user_game_4 = UserGame.new(
  user: alicia,
  game: game_xboxone_forzahorizon
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

user_game_27 = UserGame.new(
  user: fred,
  game: game_xboxone_halo5
)
user_game_27.save!

user_game_28 = UserGame.new(
  user: nico,
  game: game_xboxone_halo5
)
user_game_28.save!

user_game_29 = UserGame.new(
  user: thomas,
  game: game_xboxone_halo5
)
user_game_29.save!

user_game_30 = UserGame.new(
  user: guillaume,
  game: game_xboxone_halo5
)
user_game_30.save!

user_game_31 = UserGame.new(
  user: jeff,
  game: game_xboxone_halo5
)
user_game_31.save!

user_game_32 = UserGame.new(
  user: jeff,
  game: game_pc_dontstarve
)
user_game_32.save!

user_game_33 = UserGame.new(
  user: jeff,
  game: game_pc_forzahorizon
)
user_game_33.save!

user_game_34 = UserGame.new(
  user: jeff,
  game: game_pc_guildwars2
)
user_game_34.save!

user_game_35 = UserGame.new(
  user: jeff,
  game: game_ps4_forzahorizon
)
user_game_35.save!

user_game_36 = UserGame.new(
  user: jeff,
  game: game_xboxone_halowars2
)
user_game_36.save!

user_game_37 = UserGame.new(
  user: guillaume,
  game: game_pc_forzahorizon
)
user_game_37.save!

user_game_38 = UserGame.new(
  user: guillaume,
  game: game_pc_guildwars2
)
user_game_38.save!

user_game_39 = UserGame.new(
  user: alicia,
  game: game_pc_guildwars2
)
user_game_39.save!

user_game_40 = UserGame.new(
  user: alicia,
  game: game_ps4_forzahorizon
)
user_game_40.save!

user_game_41 = UserGame.new(
  user: alicia,
  game: game_xboxone_halowars2
)
user_game_41.save!

user_game_42 = UserGame.new(
  user: alicia,
  game: game_pc_forzahorizon
)
user_game_42.save!

user_game_43 = UserGame.new(
  user: alicia,
  game: game_xboxone_halo5
)
user_game_43.save!

user_game_44 = UserGame.new(
  user: david,
  game: game_pc_guildwars2
)
user_game_44.save!

user_game_45 = UserGame.new(
  user: david,
  game: game_pc_forzahorizon
)
user_game_45.save!

user_game_46 = UserGame.new(
  user: david,
  game: game_xboxone_halowars2
)
user_game_46.save!

user_game_47 = UserGame.new(
  user: david,
  game: game_ps4_forzahorizon
)
user_game_47.save!

user_game_48 = UserGame.new(
  user: david,
  game: game_xboxone_halo5
)
user_game_48.save!

user_game_49 = UserGame.new(
  user: kim,
  game: game_xboxone_halowars2
)
user_game_49.save!

user_game_50 = UserGame.new(
  user: kim,
  game: game_pc_forzahorizon
)
user_game_50.save!

user_game_51 = UserGame.new(
  user: kim,
  game: game_xboxone_halo5
)
user_game_51.save!

user_game_52 = UserGame.new(
  user: greg,
  game: game_pc_guildwars2
)
user_game_52.save!

user_game_53 = UserGame.new(
  user: greg,
  game: game_xboxone_halowars2
)
user_game_53.save!

user_game_54 = UserGame.new(
  user: greg,
  game: game_pc_forzahorizon
)
user_game_54.save!

user_game_55 = UserGame.new(
  user: greg,
  game: game_xboxone_halo5
)
user_game_55.save!

user_game_56 = UserGame.new(
  user: john,
  game: game_pc_guildwars2
)
user_game_56.save!

user_game_57 = UserGame.new(
  user: john,
  game: game_xboxone_halowars2
)
user_game_57.save!

user_game_58 = UserGame.new(
  user: john,
  game: game_pc_forzahorizon
)
user_game_58.save!

user_game_59 = UserGame.new(
  user: john,
  game: game_xboxone_halo5
)
user_game_59.save!

user_game_60 = UserGame.new(
  user: denton,
  game: game_pc_guildwars2
)
user_game_60.save!

user_game_61 = UserGame.new(
  user: denton,
  game: game_xboxone_halowars2
)
user_game_61.save!

user_game_62 = UserGame.new(
  user: denton,
  game: game_pc_forzahorizon
)
user_game_62.save!

user_game_63 = UserGame.new(
  user: denton,
  game: game_xboxone_halo5
)
user_game_63.save!

user_game_63 = UserGame.new(
  user: thibault,
  game: game_pc_guildwars2
)
user_game_63.save!

user_game_64 = UserGame.new(
  user: cecile,
  game: game_xboxone_halo5
)
user_game_64.save!

user_game_65 = UserGame.new(
  user: cecile,
  game: game_pc_forzahorizon
)
user_game_65.save!

user_game_66 = UserGame.new(
  user: franck,
  game: game_pc_forzahorizon
)
user_game_66.save!
user_game_67 = UserGame.new(
  user: julien,
  game: game_pc_fornite
)
user_game_67.save!

user_game_68 = UserGame.new(
  user: franck,
  game: game_pc_fornite
)
user_game_68.save!
user_game_69 = UserGame.new(
  user: pierre,
  game: game_pc_fornite
)
user_game_69.save!

user_game_70 = UserGame.new(
  user: pierre,
  game: game_pc_fornitebattleroyale
)
user_game_70.save!

user_game_71 = UserGame.new(
  user: fred,
  game: game_pc_fornitebattleroyale
)
user_game_71.save!

user_game_72 = UserGame.new(
  user: jeanne,
  game: game_pc_fornitebattleroyale
)
user_game_72.save!

user_game_73 = UserGame.new(
  user: edouard,
  game: game_pc_fornitebattleroyale
)
user_game_73.save!

user_game_74 = UserGame.new(
  user: claire,
  game: game_pc_fornitebattleroyale
)
user_game_74.save!

user_game_75 = UserGame.new(
  user: mehdi,
  game: game_pc_fornitebattleroyale
)
user_game_75.save!

user_game_76 = UserGame.new(
  user: gael,
  game: game_pc_diablo3
)
user_game_76.save!

user_game_77 = UserGame.new(
  user: guillaume,
  game: game_xboxone_halo5
)
user_game_77.save!

puts "Creating groups..."

group_1 = Group.create!(
  game: game_pc_forzahorizon,
  leader: franck,
  name: "Course Surfer's Paradise)",
  description: "Toujours plus vite",
  photo: File.open(Rails.root.join("db/fixtures/games/forza.jpg"))
)
group_2 = Group.create!(
  game: game_xboxone_halowars2,
  leader: pierre,
  name: "Team pvp et training",
  description: "Hey ! :) On est quelques potes à s'être retrouvés ici, on a prit/
   l'habitude de jouer ensemble mais on recherche d'autres joueurs pour se faire/
    des parties à la cool avec nous ! Pas de prise de tête, on joue et on rigole ;)",
  photo: File.open(Rails.root.join("db/fixtures/games/halowars2.jpg"))
)
group_3 = Group.create!(
  game: game_pc_diablo3,
  leader: guillaume,
  name: "Sortie stuff high level",
  description: "Hey! Ici on farm surtout les failles sup (70-80 environ). /
  l'objectif est de créer une équipe qui puisse farmer rapidement et efficacement,/
   avec si possible des membres dispo relativement souvent (soirs et weekend)./
    L'objectif utlime est de renforcer le stuff pour monter failles 90;/
     voir atteidnre 100 si on est chaud :) Hésitez pas à nous rejoindre si vous êtes motivés !",
  photo: File.open(Rails.root.join("db/fixtures/games/diablo3.jpg"))
)
group_4 = Group.create!(
  game: game_pc_guildwars2,
  leader: nico,
  name: "On explore pépère",
  description: "Ramassez des pierres les gens pour le hall de guilde svp merci",
  photo: File.open(Rails.root.join("db/fixtures/games/gw2.jpg"))
)
group_5 = Group.create!(
  game: game_pc_dontstarve,
  leader: fred,
  name: "On passe l'hiver seulement",
  description: "Camp établi au Nord-ouest du carrefour du portail",
  photo: File.open(Rails.root.join("db/fixtures/games/dst.jpg"))
)
game_xboxone_halo5
group_6 = Group.create!(
  game: game_xboxone_halo5,
  leader: anthony,
  name: "games à la cool soir et weekend",
  description: "On reste au bord de la map svp",
  photo: File.open(Rails.root.join("db/fixtures/games/halo5.jpg"))
)
group_7 = Group.create!(
  game: game_xboxone_halo5,
  leader: thibault,
  name: "Les matadors",
  description: "groupe axé surtout PVE /
  grosses soirées coop légendaire et un peu de training en 2v2 et swat",
  photo: File.open(Rails.root.join("db/fixtures/games/halo5.jpg"))
)
group_8 = Group.create!(
  game: game_xboxone_halo5,
  leader: jeff,
  name: "Je suis in game depuis 5jours",
  description: "LE PREMIER qui flanche je le dégage!",
  photo: File.open(Rails.root.join("db/fixtures/games/halo5.jpg"))
)
group_9 = Group.create!(
  game: game_xboxone_halo5,
  leader: alicia,
  name: "Full pvp here",
  description: "Le groupe est prêt, rejoignez moi!",
  photo: File.open(Rails.root.join("db/fixtures/games/halo5.jpg"))
)
group_10 = Group.create!(
  game: game_xboxone_halo5,
  leader: david,
  name: "Juste pour tester",
  description: "Novice accepté",
  photo: File.open(Rails.root.join("db/fixtures/games/halo5.jpg"))
)
group_11 = Group.create!(
  game: game_xboxone_halo5,
  leader: kim,
  name: "On fait de notre mieux ici",
  description: "Débutants acceptés",
  photo: File.open(Rails.root.join("db/fixtures/games/halo5.jpg"))
)
group_12 = Group.create!(
  game: game_xboxone_halo5,
  leader: fred,
  name: "Taillons-les en piece",
  description: "Pour les pros içi",
  photo: File.open(Rails.root.join("db/fixtures/games/halo5.jpg"))
)
group_13 = Group.create!(
  game: game_xboxone_halo5,
  leader: charlotte,
  name: "Pour la victoire",
  description: "On cherche des gens bons",
  photo: File.open(Rails.root.join("db/fixtures/games/halo5.jpg"))
)
group_14 = Group.create!(
  game: game_xboxone_halo5,
  leader: thibault,
  name: "Combat ultime -> cf event",
  description: "Allez les gens, on se réveille",
  photo: File.open(Rails.root.join("db/fixtures/games/halo5.jpg"))
)
group_15 = Group.create!(
  game: game_xboxone_halo5,
  leader: thibault,
  name: "Niveau Ultime",
  description: "Serrez les rangs",
  photo: File.open(Rails.root.join("db/fixtures/games/halo5.jpg"))
)
group_16 = Group.create!(
  game: game_pc_forzahorizon,
  leader: cecile,
  name: "Course Ultime Rainforest",
  description: "Toujours plus vite",
  photo: File.open(Rails.root.join("db/fixtures/games/forza.jpg"))
)
group_17 = Group.create!(
  game: game_pc_fornite,
  leader: julien,
  name: "On dois lvl up nos armes",
  description: "Farm cool svp",
  photo: File.open(Rails.root.join("db/fixtures/games/fornite.jpg"))
)
group_18 = Group.create!(
  game: game_pc_fornitebattleroyale,
  leader: claire,
  name: "On finit champion les gars",
  description: "Restez groupé bordel",
  photo: File.open(Rails.root.join("db/fixtures/games/fornite-battle-royale.jpg"))
)
group_19 = Group.create!(
  game: game_pc_fornitebattleroyale,
  leader: jeanne,
  name: "On est un bon groupe",
  description: "Suivez les events svp",
  photo: File.open(Rails.root.join("db/fixtures/games/fornite-battle-royale.jpg"))
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
  message: "mon sac est plein, je ramène du bois"
)
user_membership_6.save!
user_membership_7 = Membership.new(
  user: thomas,
  group: group_5,
  status: "accepted",
  message: "c'est bientôt la pleine lune, ou est le gloomer?"
)
user_membership_7.save!
user_membership_8 = Membership.new(
  user: alicia,
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
  message: "on reste groupé svp"
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
  message: "on va tout déchirer"
)
user_membership_17.save!
user_membership_18 = Membership.new(
  user: thibault,
  group: group_7,
  status: "accepted",
  message: "On va gagner"
)
user_membership_18.save!
user_membership_19 = Membership.new(
  user: jeff,
  group: group_8,
  status: "accepted",
  message: "C'est moi le leader"
)
user_membership_19.save!
user_membership_20 = Membership.new(
  user: john,
  group: group_8,
  status: "accepted",
  message: "ok j'y suis"
)
user_membership_20.save!
user_membership_21 = Membership.new(
  user: pierre,
  group: group_8,
  status: "accepted",
  message: "ok j'y suis"
)
user_membership_21.save!
user_membership_22 = Membership.new(
  user: alicia,
  group: group_9,
  status: "accepted",
  message: "je vous attends"
)
user_membership_22.save!
user_membership_23 = Membership.new(
  user: david,
  group: group_10,
  status: "accepted",
  message: "C'est moi le leader"
)
user_membership_23.save!
user_membership_24 = Membership.new(
  user: kim,
  group: group_11,
  status: "accepted",
  message: "C'est moi le leader"
)
user_membership_24.save!
user_membership_25 = Membership.new(
  user: pierre,
  group: group_11,
  status: "accepted",
  message: "j'espère pouvoir aider"
)
user_membership_25.save!
user_membership_26 = Membership.new(
  user: david,
  group: group_11,
  status: "accepted",
  message: "Allez essayons!"
)
user_membership_26.save!
user_membership_27 = Membership.new(
  user: fred,
  group: group_12,
  status: "accepted",
  message: "Je suis le leader"
)
user_membership_27.save!
user_membership_28 = Membership.new(
  user: charlotte,
  group: group_13,
  status: "accepted",
  message: "Je suis le leader"
)
user_membership_28.save!
user_membership_29 = Membership.new(
  user: thibault,
  group: group_14,
  status: "accepted",
  message: "C'est moi qui lead"
)
user_membership_29.save!
user_membership_30 = Membership.new(
  user: greg,
  group: group_11,
  status: "accepted",
  message: "On va tout donner les gens!"
)
user_membership_30.save!
user_membership_31 = Membership.new(
  user: john,
  group: group_10,
  status: "accepted",
  message: "Désolé du retard"
)
user_membership_31.save!
user_membership_32 = Membership.new(
  user: denton,
  group: group_14,
  status: "accepted",
  message: "Va chier greg!"
)
user_membership_32.save!
user_membership_33 = Membership.new(
  user: thibault,
  group: group_15,
  status: "accepted",
  message: "Une fois de plus, on gère la game ce soir"
)
user_membership_33.save!
user_membership_34 = Membership.new(
  user: cecile,
  group: group_15,
  status: "accepted",
  message: "allez go!"
)
user_membership_34.save!
user_membership_35 = Membership.new(
  user: cecile,
  group: group_16,
  status: "accepted",
  message: "J'ai une nouvelle caisse, matez moi ça!"
)
user_membership_35.save!

user_membership_36 = Membership.new(
  user: franck,
  group: group_16,
  status: "accepted",
  message: "rien ne m'arrêtera"
)
user_membership_36.save!

user_membership_37 = Membership.new(
  user: julien,
  group: group_17,
  status: "accepted",
  message: "Je suis le leader"
)
user_membership_37.save!

user_membership_38 = Membership.new(
  user: franck,
  group: group_17,
  status: "accepted",
  message: "J'en ai marre de crever, suivez-moi svp."
)
user_membership_38.save!

user_membership_39 = Membership.new(
  user: pierre,
  group: group_17,
  status: "accepted",
  message: "Toujours pas un bon fusil, sérieux aidez moi"
)
user_membership_39.save!

user_membership_40 = Membership.new(
  user: denton,
  group: group_4,
  status: "accepted",
  message: "Prem's game for me!"
)
user_membership_40.save!

user_membership_41 = Membership.new(
  user: jeanne,
  group: group_19,
  status: "accepted",
  message: "C'est moi le leader"
)
user_membership_41.save!

user_membership_42 = Membership.new(
  user: edouard,
  group: group_18,
  status: "accepted",
  message: "Merci pour l'invit"
)
user_membership_42.save!

user_membership_43 = Membership.new(
  user: claire,
  group: group_18,
  status: "accepted",
  message: "C'est moi le leader"
)
user_membership_43.save!

user_membership_44 = Membership.new(
  user: mehdi,
  group: group_18,
  status: "accepted",
  message: "Merci"
)
user_membership_44.save!

user_membership_44 = Membership.new(
  user: fred,
  group: group_18,
  status: "pending",
  message: "Accept pls"
)
user_membership_44.save!

user_membership_45 = Membership.new(
  user: thomas,
  group: group_7,
  status: "pending",
  message: "Je suis le petit nouveau ^^"
)
user_membership_45.save!


puts "Creating events...."

event_4 = Event.new(
  group: group_6,
  status: "accepted",
  title: "Coopération du samedi soir",
  description: "On essaie de faire du héroïque sans mourir!",
  date: Date.new(2018, 9, 1),
  time: Time.new(2018, 8, 30, 20),
  photo: File.open(Rails.root.join("db/fixtures/events/mc.jpg"))
)
event_4.save!

event_5 = Event.new(
  group: group_6,
  status: "accepted",
  title: "Partie training 2X2",
  description: "On change les équipes à chaque victoire",
  date: Date.new(2018, 9, 3),
  time: Time.new(2018, 8, 30, 20),
  photo: File.open(Rails.root.join("db/fixtures/events/johnson.jpg"))
)
event_5.save!

event_6 = Event.new(
  group: group_6,
  status: "accepted",
  title: "Session tir de precision",
  description: "On va travailler un peu le ciblage !",
  date: Date.new(2018, 8, 31),
  time: Time.new(2018, 8, 30, 20),
  photo: File.open(Rails.root.join("db/fixtures/events/lobot.png"))
)
event_6.save!

event_7 = Event.new(
  group: group_7,
  status: "accepted",
  title: "Soirée MME & CTF",
  description: "Ouvert à tous ! =)",
  date: Date.new(2018, 8, 30) ,
  time: Time.new(2018, 8, 30, 20),
  photo: File.open(Rails.root.join("db/fixtures/events/mme.png"))
)
event_7.save


puts "Creating messages ..."

message_1 = Message.new(
  content: "Hey, j'ai un pote qui veut rejoindre le groupe, je lui ai dit de faire une demande ! Si vous pouvez l'acceptez, il est cool ! ;-)",
  user: pierre,
  group: group_7
  )
message_1.save!

message_2 = Message.new(
  content: "YO, j'suis dipso demain soir soir pour faire un peu d'entrainement en SWAT!!",
  user: julien,
  group: group_7
  )
message_2.save!

puts "Seeds finished!"


