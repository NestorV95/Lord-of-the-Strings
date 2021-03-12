class Round < ActiveRecord::Base
    belongs_to :player
    belongs_to :monster
    
    def exchange_attacks(player, enemy) #works: Compares player and enemy attacks
        system 'clear'
        puts "\n" * 50
        player.display_hp
        pa = player.attack
        ea = enemy.attack
        if (pa == 'Punch' && ea == 'Kick')||(pa == 'Kick' && ea == 'Grapple')||(pa == 'Grapple' && ea == 'Punch')
            system 'clear'
            puts "\n" * 50
            player.take_dmg(1)
            player.display_hp
            puts "Their Attack Lands!"
            continue?
        elsif (pa == 'Punch' && ea == 'Grapple')||(pa == 'Kick' && ea == 'Punch')||(pa == 'Grapple' && ea == 'Kick')
            puts "Your Attack Lands!"
            enemy.take_dmg(1)
            continue?
        else
            puts "You Two Are Evenly Matched!"
            continue?
        end
    end

    def throwing_hands(player, enemy) #works: calls 3 helper methods and loops until 1 combatant is "dead"
        while player.alive? && enemy.alive?  #also increases player stats if player still "alive"
            system 'clear'
            puts "\n" * 50
            player.display_hp
            player.player_choice
            enemy.enemy_choice
            exchange_attacks(player, enemy)
        end
        if player.alive?
            system 'clear'
            puts "\n" * 50
            player.display_hp
            player.gain_exp(enemy.exp)
            player.get_paid(enemy.exp)
            puts "You Defeated The #{enemy.name} Brawler!"
            continue?
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