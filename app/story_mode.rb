def change_name(new_name) #works: changes name of our player object
    $player.name = new_name
    $player.save
end

def who_are_you? #works: prompts player for name. name: = input
    prompt = TTY::Prompt.new
    name = prompt.ask(" ", default: "Ruby Da Cherry")
    change_name(name)
end

def intro
    intro_1
    intro_2
    intro_3
    who_are_you?
    intro_4
end

def p1_dialouge
    transition_1
    transition_2
    transition_3
end

def p2_dialouge
    transition_4
    transition_5
    transition_6
end

def p3_dialouge
    transition_7
    transition_8
end

def knuckle_up(round, player, enemy)
    round.throwing_hands(player, enemy)
end

def part_one
    lvl1_screen
    p1_dialouge
    r1_movie
    knuckle_up($round_1, $player, $enemy_1)
    r2_movie
    knuckle_up($round_2, $player, $enemy_2)
    r3_movie
    knuckle_up($round_3, $player, $enemy_3)
    closing_1
end

def part_two
    lvl2_screen
    p2_dialouge
    $player.heal($player.max_hp)
    r1_movie
    knuckle_up($round_4, $player, $enemy_4)
    r2_movie
    knuckle_up($round_5, $player, $enemy_5)
    r3_movie
    knuckle_up($round_6, $player, $enemy_6)
    closing_2
end

def part_three
    lvl3_screen
    p3_dialouge
    $player.heal($player.max_hp)
    r1_movie
    knuckle_up($round_7, $player, $enemy_7)
    r2_movie
    knuckle_up($round_8, $player, $enemy_8)
    r3_movie
    knuckle_up($round_9, $player, $enemy_9)
    closing_3
end

def story_mode
    intro
    part_one
    part_two
    part_three
    congratulations
end




