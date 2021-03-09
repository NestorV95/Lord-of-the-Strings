module Combat

    module CombatInstances

        def rng_attack   #Generates random attack
            rng_choice = rand(3)
             if rng_choice == 0 
                rng_choice = "Punch"
             elsif rng_choice == 1
                rng_choice = "Kick"
             else 
                rng_choice = "Grapple"
             end
        end      

        
        # def max_hp
        #     self.hp
        # end

        def hp_range #works sets up hp range 
            self.hp = self.hp.clamp(0, 5)
        end

        def alive?   #works : returns true if hp < 0 and false otherwise
            self.hp > 0 
        end

        def take_dmg(n) #works & hp can only drop to 0.
            self.hp -= (n) ; self.hp_range
        end

        def heal(n)  #works & hp can only reach 5. 
            self.hp += (n) ; self.hp_range
        end

        def gain_exp(mon_exp)
            self.exp += mon_exp 
        end

        def get_paid(n)
            self.rubees +=(n)
        end

        def stats
            p "LVL: #{self.lvl}\n"
            p "EXP: #{self.exp}\n"
            p "HP:  #{hp} / 5 \n"
        end
    end

end


