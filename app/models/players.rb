class Player < ActiveRecord::Base
    has_many :rounds
    has_many :monsters, through: :rounds

    include Combatant::Combat

    def change_attack(attk) #works: helper method: updates player "attack"
        self.attack = attk
        self.save
    end
    
    def player_choice #works: calls helper method to update player "attack"
        attk_choices = self.attacks.map{|attack| attack}
        prompt = TTY::Prompt.new
        attk = prompt.select("Choose An Attack:", attk_choices)
        change_attack(attk)
        puts "You Try To #{attk} Your Opponent..."
    end 

    def gain_exp(mon_exp) #works: player gain exp = monster.exp
        tot_exp = self.exp += mon_exp #mon_exp is where we would plug in monster instance exp attr value
        Player.update(self.id, exp: tot_exp)
    end

    def get_paid(mon_exp)    #works: RNG decides how much $ player gets.
        tot_rub = (self.lvl * mon_exp * self.max_hp)/rand(1..3)
        Player.update(self.id, rubees: tot_rub)
    end

    def stats     #works: displays LVL, EXP & HP 
        p "LVL: #{self.lvl}\n"
        p "EXP: #{self.exp}\n"
        p "HP:  #{self.hp} / #{self.max_hp} \n"  #Update: max_hp added for abstraction purposes.
    end

    def display_hp 
        "HP:  #{self.hp} / #{self.max_hp}\n"
    end
    
end
 #player = Player.find_by(name: "Ruby Da Cherry")     

 #binding.pry
 #0