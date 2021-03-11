def change_name(new_name) #works: changes name of our player object
    $player.name = new_name
    $player.save
end

def who_are_you? #works: prompts player for name. name: = input
    prompt = TTY::Prompt.new
    name = prompt.ask("What Is Your Name?", default: "Ruby Da Cherry")
    change_name(name)
end

def intro_sequence
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





