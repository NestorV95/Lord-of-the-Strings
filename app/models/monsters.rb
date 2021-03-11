class Monster < ActiveRecord::Base
   belongs_to :level
   has_many :rounds
   has_many :players, through: :rounds

   include Combatant::Combat

   def change_attack(attk) #works: changes enemy attack attr
      Monster.update(self.id, attack: attk)
   end

   def enemy_choice #works: calls helper method to assign RNG attack 
      attk = self.rng_attack
      self.change_attack(attk)
      puts "Your Opponent Tries To #{attk} You..."
   end

end



#  monster = Monster.find_by( name: "goblin")     

#  binding.pry
# 0
   
