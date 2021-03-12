#All of the Narrative dialouge to propel the story

def continue?
    prompt = TTY::Prompt.new
    ok = prompt.select(" ", ["ok"])
end

def intro_1
    system 'clear'
    puts "\n" * 22
    puts "                                                        In a land of object orientation lived objects of many languages. Though\n"
    puts "                                                        from time to time conflicts arose over which language wassuperior, they\n" 
    puts "                                                        all lived side by side in relative peace.\n"
    puts "\n" * 22
    continue?
end

def intro_2
    system 'clear'
    puts "\n" * 22
	puts "                                                        That was, until one day a great plague swept the land. The ‘Crown\’s Plague’\n"
    puts "                                                        as it was known, created panic amongst all objects. With panic came chaos,\n"
    puts "                                                        with chaos came conflict.\n"
    puts "\n" * 22
    continue?
end

def intro_3
    system 'clear'
    puts "\n" * 24
    puts "                                                        And so now here we are. You... Wait who are you agiain? \n"
    puts "\n" * 24
end

def intro_4
    system 'clear'
    puts "\n" * 24
    puts "                                                        Ah yes! #{$player.name} I remember now! Anyways, so now here we are. You\n" 
    puts"                                                         begin your journey on a quest for toilet paper..\n"
    puts "\n" * 24
    continue?
end

def transition_1
    system 'clear'
    puts "\n" * 22
    puts "                                                       You arrive to ye old world of wally. From near and far the lots of parking\n"
    puts "                                                       are full to the brim. Scattered debris and waste litter the grounds as you\n" 
    puts"                                                        approach the main entrance.\n"
    puts "\n" * 22
    continue?
end

def transition_2
    system 'clear'
    puts "\n" * 22
    puts "                                                       From the distance you can see a crowd of objects attempting to enter.\n" 
    puts "                                                       As you near you can see the angry faces of Pythinians, Scalanites, Javans,\n" 
    puts "                                                       and Rubians alike. \n" 
    puts "\n" * 22
    continue?
end

def transition_3
    system 'clear'
    puts "\n" * 22
    puts "                                                       Just as you arrive the angry mob begins to break through the main entrance\n" 
    puts "                                                       and soon the crowd begins fighting as they try to force themselves in. \n"
    puts "                                                       You attempt to grab a cart when suddenly...\n"
    puts "\n" * 22
    continue?
end

def closing_1
    system 'clear'
    puts "\n" * 23
    puts "                                                       With only a few minor scrapes you manage to escape the mob at the entrance\n" 
    puts "                                                       and begin to make your way to the toilet paper aisle.\n"
    puts "\n" *23
    continue?
end

def transition_4
    system 'clear'
    puts "\n" * 22
    puts "                                                       Every aisle you come across is completely destroyed. Everywhere you look\n" 
    puts "                                                       objects are fighting over general goods. In the distance you can hear\n" 
    puts "                                                       yelling from the distance.\n" 
    puts "\n" * 22
    continue?
end

def transition_5
    system 'clear'
    puts "\n" * 22
	puts "                                                       Upon arrival to the toilet paper aisle, an employee brings out a large\n"
    puts "                                                       stack of toilet paper and it is immediately swarmed by the crowd of\n" 
    puts "                                                       objects around you.\n"
    puts "\n" * 22
    continue?
end

def transition_6
    system 'clear'
    puts "\n" * 23
	puts "                                                       Just as you manage to grab a bundle of toilet paper you find that someone\n"
    puts "                                                       else has a hold of it as well...\n"
    puts "\n" * 23
    continue?
end

def closing_2
    system 'clear'
    puts "\n" * 24
    puts "                                                    Many a brawl you have survived for this item but your quest is not over just yet...\n"
    puts "\n" * 24
    continue?
end

def transition_7
    system 'clear'
    puts "\n" * 23
    puts "                                                       One does not simply walk out of the world of wally without first paying\n" 
    puts "                                                       for their goods. As is customary you make your way to the registers.\n"
    puts "\n" *23
    continue?
end

def transition_8
    system 'clear'
    puts "\n" * 23
    puts "                                                       But upon arrival to the register you are suddenly blindsided by someone\n"
    puts "                                                       determined to steal the toilet paper you so valiantly fought for...\n"
    puts "\n" * 23
    continue?
end

def closing_3
    system 'clear'
    puts "\n" * 22
    puts "                                                       Huzzah! Victory after victory has led you to this very moment. Bask\n" 
    puts "                                                       in your own glory for you have retrieved the toilet paper and now\n" 
    puts "                                                       your journey ends here hero.\n" 
    puts "\n" * 22
    continue?
end