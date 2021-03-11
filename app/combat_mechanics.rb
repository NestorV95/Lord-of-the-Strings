#everything to do with actual combat mechanics on one page

def default_player 
    {:name=> "no name", :lvl=> 1, :exp=> 0, :hp=> 5, :rubees=> 0, :max_hp=> 5, :attack=> "Punch"}
end

def default_monster #works: run this at start of new game to wipe player stats.
    {:name=> "goblin", :exp=> 3, hp: 1, level_id: t_level.id, max_hp: 1, attack: "Punch"}
end

def change_attack(attk) #works: helper method: updates player "attack"
    $player.attack = attk
    $player.save
end

def player_choice #works: calls helper method to update player "attack"
    attk_choices = $player.attacks.map{|attack| attack}
    prompt = TTY::Prompt.new
    attk = prompt.select("Choose An Attack:", attk_choices)
    change_attack(attk)
    puts "You Try To #{attk} Your Opponent..."
end

def change_enemy_attack(enemy, attk) #works: changes enemy attack attr
    Monster.update(enemy.id, attack: attk)
end

def enemy_choice(enemy) #works: calls helper method to assign RNG attack 
    attk = enemy.rng_attack
    change_enemy_attack(enemy, attk)
    puts "Your Opponent Tries To #{attk} You..."
end

def exchange_attacks(enemy) #works: Compares player and enemy attacks
    pa = $player.attack
    ea = enemy.attack
    if (pa == 'Punch' && ea == 'Kick')||(pa == 'Kick' && ea == 'Grapple')||(pa == 'Grapple' && ea == 'Punch')
        puts "Their Attack Lands!"
            $player.take_dmg(1)
            $player.display_hp
    elsif (pa == 'Punch' && ea == 'Grapple')||(pa == 'Kick' && ea == 'Punch')||(pa == 'Grapple' && ea == 'Kick') 
        puts "Your Attack Lands!"
            enemy.take_dmg(1)
    else
       puts "You Two Are Evenly Matched!"
    end
end

def throwing_hands(enemy) #works: calls 3 helper methods and loops until 1 combatant is "dead"
    while $player.alive? && enemy.alive?  #also increases player stats if player still "alive"
        player_choice
        enemy_choice(enemy)
        exchange_attacks(enemy)
    end
        if $player.alive?
            $player.gain_exp(enemy.exp)
            $player.get_paid(enemy.exp)
            puts "You Defeated #{enemy.name}!"
        else
            puts "insert Game Over Method Goes Here" #needs a GAME OVER screen 
        end
end