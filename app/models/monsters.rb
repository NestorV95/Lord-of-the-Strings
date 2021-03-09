class Monster < ActiveRecord::Base
   belongs_to :level
   has_many :rounds
   has_many :players, through: :rounds
   
end