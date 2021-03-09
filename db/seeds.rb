Level.destroy_all
Monster.destroy_all
Player.destroy_all
Round.destroy_all

ruby = Player.create(name: "Ruby Da Cherry", lvl: 1, exp: 0, hp: 5, rubees: 0)

wally = Level.create(name: "Wally World")

goblin = Monster.create(name: "Goblin", exp: 3, hp: 1, level_id: test_l.id)

combat = Round.create( player_id: test_p.id, monster_id: test_m.id)


