def change_name(new_name) #works: changes name of our player object
    $player.name = new_name
    $player.save
end

def who_are_you? #works: prompts player for name. name: = input
    prompt = TTY::Prompt.new
    name = prompt.ask("What Is Your Name?", default: "Ruby Da Cherry")
    change_name(name)
end

def intro
    intro_1
    intro_2
    intro_3
    who_are_you?
    intro_4
end

def Lvl_1_start
    transition_1
    transition_2
    transition_3
end

def lvl_2_start
    transition_4
    transition_5
    transition_6
end

def lvl_3_start
    transition_7
    transition_8
end

# def part_one
#     lvl_1 = Level.new("The Siege of Wally World")
#     enemy_1 = Monster.new(name: "Pythinian", exp: 3, hp: 1, level_id: lvl_1.id, max_hp: 1, attack: "Punch")
#     enemy_2 = Monster.new(name: "Rubian", exp: 3, hp: 1, level_id: lvl_1.id, max_hp: 1, attack: "Kick")
#     enemy_3 = Monster.new(name: "Javan", exp: 6, hp: 2, level_id: lvl_1.id, max_hp: 2, attack: "Grapple")
#     round_1 = Round.new(player_id: $player.id, monster_id: enemy_1.id)
#     round_2 = Round.new(player_id: $player.id, monster_id: enemy_2.id)
#     round_3 = Round.new(player_id: $player.id, monster_id: enemy_3.id)
#     intro
#     lvl_1_start
#     round_1.throwing_hands(p e)
#     round_1.throwing_hands(p e)
#     round_1.throwing_hands(p e)
#     closing_1
# end

# def part_two
#     lvl_2 = Level.new("The Battle for TP")
#     enemy_4 = Monster.new(name: "Scalanite", exp: 5, hp: 1, level_id: lvl_2.id, max_hp: 1, attack: "Punch")
#     enemy_5 = Monster.new(name: "Javan", exp: 5, hp: 2, level_id: lvl_2.id, max_hp: 2, attack: "Kick")
#     enemy_6 = Monster.new(name: "Rubian", exp: 10, hp: 3, level_id: lvl_2.id, max_hp: 3, attack: "Grapple")
#     round_4 = Round.new(player_id: $player.id, monster_id: enemy_4.id)
#     round_5 = Round.new(player_id: $player.id, monster_id: enemy_5.id)
#     round_6 = Round.new(player_id: $player.id, monster_id: enemy_6.id)
# end

# def part_three
#     lvl_3 = Level.new("Ambush of the Register")
#     enemy_7 = Monster.new(name: "Scalanite", exp: 7, hp: 2, level_id: lvl_2.id, max_hp: 2, attack: "Punch")
#     enemy_8 = Monster.new(name: "Javan", exp: 7, hp: 3, level_id: lvl_2.id, max_hp: 3, attack: "Kick")
#     enemy_9 = Monster.new(name: "Rubian", exp: 14, hp: 4, level_id: lvl_2.id, max_hp: 4, attack: "Grapple")
#     round_7 = Round.new(player_id: $player.id, monster_id: enemy_7.id)
#     round_8 = Round.new(player_id: $player.id, monster_id: enemy_8.id)
#     round_9 = Round.new(player_id: $player.id, monster_id: enemy_9.id)
# end



