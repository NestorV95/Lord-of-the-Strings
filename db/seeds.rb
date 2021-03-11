Level.destroy_all
Monster.destroy_all
Player.destroy_all
Round.destroy_all

player = Player.create(name: "Ruby Da Cherry", lvl: 1, exp: 0, hp: 5, rubees: 0, max_hp: 5, attack: "Punch")

lvl1 = Level.create(name: "Wally World")

goblin = Monster.create(name: "Goblin", exp: 3, hp: 1, level_id: lvl1.id, max_hp:, attack: "Punch")

ro1 = Round.create( player_id: plr1.id, monster_id: mon1.id)


