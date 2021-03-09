class Monster < ActiveRecord::Base
   belongs_to :level
   has_many :rounds
   has_many :players, through: :rounds

   include Combat::CombatInstances
    
end

#  monster = Monster.find_by( name: "goblin")     

#  binding.pry
# 0
   
