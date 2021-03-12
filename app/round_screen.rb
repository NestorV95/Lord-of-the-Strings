def blank_screen
    system 'clear'
    puts "\n" * 50
end

def r1_title 
    title = Artii::Base.new(:font => "epic")
    puts title.asciify("                            round  one")
end

def r1_screen
    system 'clear'
    puts "\n" * 20
    r1_title
    puts "\n" * 20
end

def r1_flash
    (2).times{
    r1_screen    
    sleep 0.50
    blank_screen
    sleep 0.50}
end

def r2_title 
    title = Artii::Base.new(:font => "epic")
    puts title.asciify("                            round  two")
end

def r2_screen
    system 'clear'
    puts "\n" * 20
    r2_title
    puts "\n" * 20
end

def r2_flash
    (2).times{
    r2_screen
    sleep 0.50
    blank_screen
    sleep 0.50}
end

def r3_title 
    title = Artii::Base.new(:font => "epic")
    puts title.asciify("                        round  Three")
end

def r3_screen
    system 'clear'
    puts "\n" * 20
    r3_title
    puts "\n" * 20
end

def r3_flash
    (2).times{
    r3_screen
    sleep 0.50
    blank_screen
    sleep 0.50}
end

def fight_title
    title = Artii::Base.new(:font => "epic")
    puts title.asciify("                                   FIGHT!")
end

def fight_screen
    system 'clear'
    puts "\n" * 20
    fight_title
    puts "\n" * 20
end

def fight_flash
    (2).times{
    fight_screen
    sleep 0.50
    blank_screen
    sleep 0.50}
end

def r1_movie
    r1_flash
    fight_flash
end

def r2_movie
    r2_flash
    fight_flash
end

def r3_movie
    r3_flash
    fight_flash
end

def lvl1_title 
    title = Artii::Base.new(:font => "epic")
    puts title.asciify("The Siege of Wall y World")
end

def lvl2_title 
    title = Artii::Base.new(:font => "epic")
    puts title.asciify("               The Battle for TP")
end

def lvl3_title 
    title = Artii::Base.new(:font => "epic")
    puts title.asciify("   Ambush at the Regi ster")
end

def lvl1_screen
    system 'clear'
    puts "\n" * 20
    lvl1_title
    puts "\n" * 20
    sleep 5
end

def lvl2_screen
    system 'clear'
    puts "\n" * 20
    lvl2_title
    puts "\n" * 20
    sleep 5
end

def lvl2_screen
    system 'clear'
    puts "\n" * 20
    lvl3_title
    puts "\n" * 20
    sleep 5
end

