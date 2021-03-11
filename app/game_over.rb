def go_title 
    title = Artii::Base.new(:font => "slant")
    puts title.asciify("                  Game Over")
end

def game_over
    clear_terminal
    go_title
    puts "\n" * 20
    prompt = TTY::Prompt.new
    go_choice = prompt.select("You Have Died", ["Play Again","Main Menu"])
    if (go_choice == "Play Again")
        story_mode
    elsif (go_choice == "Main Menu")
        main_menu    
    end
end