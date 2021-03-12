def go_title 
    title = Artii::Base.new(:font => "epic")
    puts title.asciify("                            Game  Over")
end

def game_over
    system 'clear'
    puts "\n" * 20
    go_title
    puts "                                                                             And So Our Hero's Journey Ends Here."
    puts "\n" * 20
    prompt = TTY::Prompt.new
    go_choice = prompt.select(" ", ["Play Again","Main Menu"])
    if (go_choice == "Play Again")
        story_mode
    elsif (go_choice == "Main Menu")
        main_menu    
    end
end

def congrats_title
    title = Artii::Base.new(:font => "epic")
    puts title.asciify("            Congratulations!")
end

def congratulations
    system 'clear'
    puts "\n" * 20
    congrats_title
    puts "                                  Thank You For Playing Our Game, We Hope You Liked It Unfortanetly This IS As Far As We Got. Check Back Soon For More Updates"
    puts "\n" * 20
    prompt = TTY::Prompt.new
    congrats_choice = prompt.select(" ", ["Play Again", "Main Menu", "Credits", "Exit"])
    if (congrats_choice == "Play Again")
        story_mode
    elsif (congrats_choice == "Main Menu")
        main_menu 
    elsif (congrats_choice == "Credits")
        credits       
    else 
        exit_game
    end
end