module Combat
    module CombatInstances #these module instances are for players and monsters to "fight"

        def attacks     #works: array of attacks
            attacks = ['Punch', 'Kick', 'Grapple']
        end

        def rng_attack   #works: Generates a random attack
            attk = attacks.each{|str| str}.sample
            self.attack = attk
        end      

        def hp_range #works: sets up hp range 
            self.hp = self.hp.clamp(0, self.max_hp)   #Update: max_hp added for abstraction purposes.
        end

        def alive?   #works: returns true if hp > 0 and false otherwise
            self.hp > 0 
        end

        def take_dmg(n) #works: & hp can only drop to 0.
            self.hp -= (n) ; self.hp_range
        end

        def heal(n)  #works: & hp can only reach 5. 
            self.hp += (n) ; self.hp_range
        end

        def gain_exp(mon_exp) #works: player gain exp = monster.exp
            tot_exp = $player.exp += mon_exp #mon_exp is where we would plug in monster instance exp attr value
            Player.update($player.id, exp: tot_exp)
        end

        def get_paid(mon_exp)    #works: RNG decides how much $ player gets.
            tot_rub = ($player.lvl * mon_exp * $player.max_hp)/rand(1..3)
            Player.update($player.id, rubees: tot_rub)
        end

        def display_hp 
            "HP:  #{self.hp} / #{self.max_hp}\n"
        end

        def stats     #works: displays LVL, EXP & HP 
            p "LVL: #{self.lvl}\n"
            p "EXP: #{self.exp}\n"
            p "HP:  #{self.hp} / #{self.max_hp} \n"  #Update: max_hp added for abstraction purposes.
        end
        
    end

end


