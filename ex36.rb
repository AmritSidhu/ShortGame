def p
  print "> "
end


puts """
Your late for your very important,
highly classified meeting for GDS.
Its late and no one except security are in the building.
You have forgotten your pass and the scurity guard wont let you pass.
Do you;
\ta. Try to fight the gaurd and knock him unconscious, or
\tb. Leap over the barrier and jump into the closing lift
"""
print p
input_1 = $stdin.gets.chomp.downcase

if input_1 == "a"
  puts "Guard karate chops you into oblivion!"
elsif input_1 == "b"
  puts "You leap over and make it into the lift as the gaurd fails to catch you"
  puts ""
  puts "You forget what floor you need to go to, which floor do you choose:"
  puts """\ta. Floor 3
  \tb. Floor 6"""
  print p
  floor = $stdin.gets.chomp.downcase
  if floor == "a"
    puts "*doors open* The gaurd is standing in front of you"
    puts "Gaurd karate chops you into oblivion!"
  elsif floor == "b"
    puts "*doors open* Everything is extremely quite"
  else
    puts"Why are you being difficult. Enter answer like a normal person!"
  end
else
  puts "Why are you being difficult. Enter answer like a normal person!"
end



def floor_6
  lift = 0
  while lift < 6
    lift += 1
    puts "^#{lift}^"
  end
  puts
  puts "*doors open* Everything is extremely quite"
  puts """You hear the guard charging up the stairs
What do you do;
  \ta. Suprise attack the guard as he comes through the door,
  \tb. Bar the door so he cant get through,
  \tc. Try to hide and hope he goes away """
  floor_option_1 = $stdin.gets.chomp.downcase
  if floor_option_1 == "a"
    puts "You a nerd! you have no chance of attacking anyone!"
    puts "Gaurd karate chops you into oblivion"
  elsif floor_option_1 == "b"
    puts "You bar the door shut with a broom and continue into the floor"
  elsif floor_option_1 == "c"
    puts "You whimp, your cowardness looses you the game!"
  else
    puts "Why are you being difficult. Enter answer like a normal person!"
    floor_6
end
end






def floor_3
  lift = 0
  while lift < 3
    lift += 1
    puts "^^"lift
  end
  puts "*doors open* The gaurd is standing in front of you!"
  puts "Gaurd karate chops you into oblivion!"
end



def meeting_room
  puts """You've made it to the meeting room, but...
Standing in front of you are the grousome duo gaurding the room
AKA Tom and Kev.........
What do you do;
\ta. Flee in utter fear...
\tb. Fight your way through"""
guards = $stdin.gets.chomp.downcase
if guards = "a"
  puts "You whimp! You deserve to loose!"
elsif guards = "b"
  puts "Well, that was suprisingly easy..."
else
  puts "Why are you being difficult. Enter answer like a normal person!"
  meeting_room
end
end
