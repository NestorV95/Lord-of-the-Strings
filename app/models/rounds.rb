class Round < ActiveRecord::Base
    belongs_to :player
    belongs_to :monster

    def exchange_attacks(player, enemy) #works: Compares player and enemy attacks
        system 'clear'
        enemy_art
        player.display_hp
        pa = player.attack
        ea = enemy.attack
        if (pa == 'Punch' && ea == 'Kick')||(pa == 'Kick' && ea == 'Grapple')||(pa == 'Grapple' && ea == 'Punch')
            system 'clear'
            enemy_art
            player.take_dmg(1)
            player.display_hp
            puts "Their Attack Lands!"
            sleep 3
        elsif (pa == 'Punch' && ea == 'Grapple')||(pa == 'Kick' && ea == 'Punch')||(pa == 'Grapple' && ea == 'Kick')
            system 'clear'
            enemy_hit
            puts "Your Attack Lands!"
            enemy.take_dmg(1)
            sleep 3
        else
            puts "You Two Are Evenly Matched!"
            sleep 3
        end
    end

    def throwing_hands(player, enemy) #works: calls 3 helper methods and loops until 1 combatant is "dead"
        while player.alive? && enemy.alive?  #also increases player stats if player still "alive"
            system 'clear'
            puts "\n" * 10
            enemy_art
            player.display_hp
            player.player_choice
            enemy.enemy_choice
            exchange_attacks(player, enemy)
        end
        if player.alive?
            system 'clear'
            puts "\n" * 10
            enemy_kod
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