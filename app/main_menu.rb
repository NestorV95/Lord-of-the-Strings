def mm_title
    title = Artii::Base.new(:font => "epic")
    puts title.asciify("        Lord  Of  The  Str ings")
end

def htp_title
    title = Artii::Base.new(:font => "epic")
    puts title.asciify("                         How  To  Play")
end

def credit_title
    title = Artii::Base.new(:font => "epic")
    puts title.asciify("                                credits")
end

def exit_title
    title = Artii::Base.new(:font => "epic")
    puts title.asciify("                              Good  Bye!")
end

def exit_game
    system 'clear'
    puts "\n" * 20
    exit_title
    puts "\n" * 20
    exit!
end

def credits 
   system 'clear'
   puts "\n" * 20
   credit_title
   puts "\n" * 6
   puts "                                                           ---------------------------- Developers ---------------------------------\n"
   puts "\n" * 2 
   puts "                                                                                     Udenna Nebeolisa\n"
   puts "\n"
   puts "                                                                                      Nestor Venegas\n"
   puts "\n"
   puts "\n"
   puts "\n" * 9
   prompt = TTY::Prompt.new
   prompt.select("", ["Return To Main Menu"])
   main_menu
end

def how_to_play
    system 'clear'
    puts "\n" * 20
    htp_title
    puts "\n" * 10
    puts "                                                           You Can Navigate Through Selections With The Up And Down Arrow Keys \n"
    puts "                                                           Press 'Eneter' To Select An Option.\n"
    puts "\n" * 2
    puts "                                                         -------------------------------- Combat ------------------------------------" 
    puts "\n" * 2
    puts "                                                           You Have Three Attacks To Choose From 'Punch', 'Kick', & 'Grapple\n"
    puts "                                                           Your Attack Will Be Compared to Your Opponents Attack And The Winner\n"
    puts "                                                           Will Be Decided in a 'Rock Paper Scizzors' Style Combat System.\n"
    puts "\n" * 10
    prompt = TTY::Prompt.new
    prompt.select(" ", ["Return To Main Menu"])
    main_menu
end

def main_menu
    system 'clear'
    puts "\n" * 20
    mm_title
    puts "\n" * 18
    prompt = TTY::Prompt.new
    hs_choice = prompt.select(" ", ["Start Game","How To Play", "Credits", "Exit"])
    if (hs_choice == "Start Game")
        story_mode
    elsif (hs_choice == "How To Play")
        how_to_play    
    elsif (hs_choice == "Credits")
        credits       
    else 
        exit_game
    end
end

def mm_screen
    system 'clear'
    puts "\n" * 20
    mm_title
    puts "\n" * 20
end

def title_flash
    (3).times{
    mm_screen
    sleep 0.50
    blank_screen
    sleep 0.50}
end