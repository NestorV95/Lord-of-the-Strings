require_relative "config/environment.rb"

require "pry"

$player = Player.new(:name=> "no name", :lvl=> 1, :exp=> 0, :hp=> 5, :rubees=> 0, :max_hp=> 5, :attack=> "Punch")
# t_level = Level.new("Testing Grounds")
# t_enemy = Monster.new(default_monster)
# t_round = Round.new (, t_enem.id)


binding.pry
0

