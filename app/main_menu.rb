def clear_terminal
    puts "\n" * 64
end

def mm_title
    title = Artii::Base.new(:font => "epic")
    puts title.asciify("                  Ruby   Brawls")
end

def htp_title
    title = Artii::Base.new(:font => "slant")
    puts title.asciify("                       How To Play")
end

def credit_title
    title = Artii::Base.new(:font => "slant")
    puts title.asciify("                              credits")
end

def exit_title
    title = Artii::Base.new(:font => "slant")
    puts title.asciify("                              Good Bye!")
end

def exit_game
    clear_terminal
    exit_title
    puts "\n" * 20
    exit!
end

def credits 
   clear_terminal
   credit_title
   puts "\n" * 6
   puts "                                       ------------------------------- Developers ----------------------------------\n"
   puts "\n" * 2 
   puts "                                                                      Garrett Hill \n"
   puts "\n"
   puts "                                                                    Udenna Nebeolisa\n"
   puts "\n"
   puts "                                                                     Nestor Venegas\n"
   puts "\n" * 9
   prompt = TTY::Prompt.new
   prompt.select("                                                                   Return To Main Menu?", ["Yes!"])
   main_menu
end

def how_to_play
    clear_terminal
    htp_title
    puts "\n" * 6
    puts "                                          You Can Navigate Through Selections With The Up And Down Arrow Keys \n"
    puts "                                          Press 'Eneter' To Select An Option.\n"
    puts "\n" * 3
    puts "                                        -------------------------------- Combat ------------------------------------" 
    puts "\n" * 3
    puts "                                           You Have Three Attacks To Choose From 'Punch', 'Kick', & 'Grapple\n"
    puts "                                           Your Attack Will Be Compared to Your Opponents Attack And The Winner\n"
    puts "                                           Will Be Decided in a 'Rock Paper Scizzors' Style Combat System.\n"
    puts "\n" * 9
    prompt = TTY::Prompt.new
    prompt.select("                                                                    Return To Main Menu?", ["Yes!"])
    main_menu
end

def main_menu
    clear_terminal
    mm_title
    puts "\n" * 20
    prompt = TTY::Prompt.new
    hs_choice = prompt.select("What would you like to do?", ["Start Game","How To Play", "Credits", "Exit"])
    if (hs_choice == "Start Game")
        #method for dialouge and cut possibly image
        #player_name = prompt.ask("What is your name?")
        #method for the game
        puts "this will start our game"
    elsif (hs_choice == "How To Play")
        how_to_play    
    elsif (hs_choice == "Credits")
        credits       
    else 
        exit_game
    end
end
