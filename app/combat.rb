module Combat

    module CombatClass
        max_hp = 5

        def hp
            @hp.clamp(0, max_hp)
        end

        def alive?
            @hp > 0 
        end

        def take_dmg(n)
            @hp -= (n)
        end

        def heal(n)
            @hp += (n)
        end

        def gain_xp
            Player.xp += Monster.xp 
        end

        def get_paid(n)
            @rubees +=(n)
        end

        def stats
            puts "HP: #{hp}/#{max_hp}"
            binding.pry
        end
    end

end


