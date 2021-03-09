require "pry"

class Player < ActiveRecord::Base
    has_many :rounds
    has_many :monsters, through: :rounds

    # extend Combat::CombatClass

    attr_accessor :name, :lvl, :exp, :hp, :rubees

    def initialize(name)
        @name = name
        @lvl = 1
        @exp = 0
        @hp = 5
        @rubees = 0
        binding.pry
    end 
    
end
player = Player.new("Ruby Da Cherry")