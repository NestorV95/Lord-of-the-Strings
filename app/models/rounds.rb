class Round < ActiveRecord::Base
    belongs_to :player
    belongs_to :monster
    
    round_started = false
    round_ended = false

    #might not use this function
    # def reset_rounds
    #     round_started = false
    #     round_ended = false
    # end

    def round_start(n)
        if round_started == false
        round_started = true
        round_ended = false
        puts "start of round #{n}"
        end
    end

    def in_round
        round_started = true
        round_ended = false
        puts "round in progress"
    end

    def round_end(n)
        round_started = true
        round_ended = true
        puts "end of round #{n}"
    end

    def dialogue(string)
        "#{string}".each_char {|c| putc c ; sleep 0.05; $stdout.flush }
    end

    def exchange_attacks(player, enemy) #works: Compares player and enemy attacks
            pa = player.attack
            ea = enemy.attack
        if (pa == 'Punch' && ea == 'Kick')||(pa == 'Kick' && ea == 'Grapple')||(pa == 'Grapple' && ea == 'Punch')
            puts "Their Attack Lands!"
            player.take_dmg(1)
            player.display_hp
        elsif (pa == 'Punch' && ea == 'Grapple')||(pa == 'Kick' && ea == 'Punch')||(pa == 'Grapple' && ea == 'Kick') 
            puts "Your Attack Lands!"
            enemy.take_dmg(1)
        else
            puts "You Two Are Evenly Matched!"
        end
    end


    def throwing_hands(player, enemy) #works: calls 3 helper methods and loops until 1 combatant is "dead"
        while player.alive? && enemy.alive?  #also increases player stats if player still "alive"
            player.player_choice
            enemy.enemy_choice
            exchange_attacks(player, enemy)
        end
        if player.alive?
            player.gain_exp(enemy.exp)
            player.get_paid(enemy.exp)
            puts "You Defeated #{enemy.name}!"
        else
            game_over 
        end
    end
end

$round_1 = Round.new(player_id: $player.id, monster_id: $enemy_1.id)
$round_2 = Round.new(player_id: $player.id, monster_id: $enemy_2.id)
$round_3 = Round.new(player_id: $player.id, monster_id: $enemy_3.id)
$round_4 = Round.new(player_id: $player.id, monster_id: $enemy_4.id)
$round_5 = Round.new(player_id: $player.id, monster_id: $enemy_5.id)
$round_6 = Round.new(player_id: $player.id, monster_id: $enemy_6.id)
$round_7 = Round.new(player_id: $player.id, monster_id: $enemy_7.id)
$round_8 = Round.new(player_id: $player.id, monster_id: $enemy_8.id)
$round_9 = Round.new(player_id: $player.id, monster_id: $enemy_9.id)