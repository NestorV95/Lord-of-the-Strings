module Combat

    module CombatInstances #these module instances are for players and monsters to "fight"

        def attacks     #works: array of attacks
            attacks = ['Punch', 'Kick', 'Grapple']
        end
        def rng_attack   #works: Generates a random attack
            attacks.sample(1)
        end      

        def hp_range #works: sets up hp range 
            self.hp = self.hp.clamp(0, 5)   #would be more abstract if players and monsters had a "max_hp" attribute.
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

        def gain_exp(mon_exp) #works: player capable of gaining exp.
            self.exp += mon_exp #mon_exp is where we would plug in monster instance exp attr value
        end

        def get_paid(n)    #works:player capable of gaining schmoney
            self.rubees +=(n) 
        end

        def stats     #works: displays LVL, EXP & HP
            p "LVL: #{self.lvl}\n"
            p "EXP: #{self.exp}\n"
            p "HP:  #{self.hp} / 5 \n" #need max_hp attr to make this more abstract.
        end
        
    end

end


