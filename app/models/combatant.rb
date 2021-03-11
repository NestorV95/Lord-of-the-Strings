module Combatant

    module Combat #these module instances are for players and monsters to "fight"

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
 
    end

end


