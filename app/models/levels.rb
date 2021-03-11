class Level < ActiveRecord::Base
    has_many :monsters

end

    $lvl_1 = Level.find(6)
    $lvl_2 = Level.find(7)
    $lvl_3 = Level.find(8)