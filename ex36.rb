#Simple game
def p
  print "> "
end

def floor_3
  lift = 0
  while lift < 3
    lift += 1
    puts "^#{lift}^"
  end
  puts "*doors open* The gaurd is standing in front of you!"
  puts "Gaurd karate chops you into oblivion!"
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
    puts
    puts "You bar the door shut with a broom and continue into the floor"
    meeting_room
  elsif floor_option_1 == "c"
    puts "You whimp, your cowardness looses you the game!"
  else
    puts "Why are you being difficult. Enter answer like a normal person!"
    floor_6
end
end

def meeting_room
  puts """You've made it to the meeting room, but...
Standing in front of you are the grousome duo gaurding the room
AKA Tom and Kev.........
What do you do;
\ta. Flee in utter fear...
\tb. Fight your way through"""
guards = $stdin.gets.chomp.downcase
if guards == "a"
  puts "You whimp! You deserve to loose!"
elsif guards == "b"
  puts """Well, that was suprisingly easy... Didnt even put up a fight...
  After leaping over the barriers to avoid security,
  Having to lock the security gaurd in the stairs,
  Having to fight your way through two brutes!
  It turns out the meeting was tomorrow....
  Not everyone can be winners......................."""
else
  puts "Why are you being difficult. Enter answer like a normal person!"
  meeting_room
end
end

def start
puts """
(Help-->Enter 'a','b','c' when prompted)
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
  puts
  puts "You leap over and make it into the lift as the gaurd fails to catch you"
  puts "You forget what floor you need to go to, which floor do you choose:"
  puts """\ta. Floor 3
  \tb. Floor 6"""
  print p
  floor = $stdin.gets.chomp.downcase
  if floor == "a"
    floor_3
  elsif floor == "b"
    floor_6
  else
    puts "Why are you being difficult. Enter answer like a normal person!"
end
end
end

start
