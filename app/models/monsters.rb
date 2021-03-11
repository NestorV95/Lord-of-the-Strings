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

   $enemy_1 = Monster.find(5)
   $enemy_2 = Monster.find(6)
   $enemy_3 = Monster.find(7)
   $enemy_4 = Monster.find(8)
   $enemy_5 = Monster.find(9)
   $enemy_6 = Monster.find(10)
   $enemy_7 = Monster.find(11)
   $enemy_8 = Monster.find(12)
   $enemy_9 = Monster.find(13)

   
