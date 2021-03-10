class Round < ActiveRecord::Base
    belongs_to :player
    belongs_to :monster
    
    round_started = false
    round_ended = false

    #might not use this function
    # def reset_rounds
    #     round_started = false
    #     round_ended = false
    # end

    def round_start(n)
        if round_started == false
        round_started = true
        round_ended = false
        puts "start of round #{n}"
        end
    end

    def in_round
        round_started = true
        round_ended = false
        puts "round in progress"
    end

    def round_end(n)
        round_started = true
        round_ended = true
        puts "end of round #{n}"
    end

    def dialogue(string)
        "#{string}".each_char {|c| putc c ; sleep 0.05; $stdout.flush }
    end
end