require "pry"

class Player < ActiveRecord::Base
    has_many :rounds
    has_many :monsters, through: :rounds

    include Combat::CombatInstances

    
    
end
 player = Player.find_by(name: "Ruby Da Cherry")     

# binding.pry
# 0