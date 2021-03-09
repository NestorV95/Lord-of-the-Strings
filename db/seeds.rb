Level.destroy_all
Monster.destroy_all
Player.destroy_all
Round.destroy_all

plr1 = Player.create(name: "Ruby Da Cherry", lvl: 1, exp: 0, hp: 5, rubees: 0)

lvl1 = Level.create(name: "Wally World")

mon1 = Monster.create(name: "Goblin", exp: 3, hp: 1, level_id: lvl_1.id)

ro1 = Round.create( player_id: plr1.id, monster_id: mon1.id)


