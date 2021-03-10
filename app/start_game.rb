def player #works:retrieves our specific player object
    player = Player.find(3)
end

def default_attributes #works: helper method fo default_player
    {:name => "no name", :lvl => 1, :exp => 0, :hp => 5, :rubees => 0}
end

def default_player #works: run this at start of new game to wipe player stats.
    Player.update(3, default_attributes)
end

def change_name(name) #works: changes name of our player object
    Player.update(3, name: name)
end

def who_are_you? #works: prompts player for name. name: = input
    prompt = TTY::Prompt.new
    name = prompt.ask("What Is Your Name?", default: "Ruby Da Cherry")
    change_name(name)
end

def player_name #works: retrieves our player_name
    player.name
end

def player_choice
    attacks = player.attacks.map {|attack| attack }
    prompt = TTY::Prompt.new
    attack_choice = prompt.select("Choose An Attack:", attacks)
    player_attack = attack_choice
    puts "You Try To #{attack_choice} Your Opponent..."
end

def enemy_choice
    attack = player.attacks.sample
    puts "Your Opponent Tries To #{attack} You..."
end

def exchange_attacks
    pa = player_attack
    ea = enemy_attack
    if (pa == 'Punch' && ea == 'Kick')||(pa == 'Kick' && ea == 'Grapple')||(pa == 'Grapple' && ea == 'Punch')
        puts "Their Attack Lands!"
            #player.take_dmg(1)
    elsif (pa == 'Punch' && ea == 'Grapple')||(pa == 'Kick' && ea == 'Punch')||(pa == 'Grapple' && ea == 'Kick') 
        puts "Your Attack Lands!"
            #enemy.take_dmg(1)
    else
       puts "You Two Are Evenly Matched!"
    end
end


puts "start_game.rb has run"