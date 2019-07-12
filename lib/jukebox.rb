#def say_hello(name)
#  "Hi #{name}!"
#end
 
#puts "Enter your name:"
#users_name = gets.chomp
 
#puts say_hello(users_name)

############################################################

songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

############################################################

def help 
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end 

def list(songs)
  songs.each_with_index do |song, index|
    puts "#{index + 1}. #{song}"
  end
end 

def play(songs)
  puts "Please enter a song name or number:"
  user_response = gets.chomp
  songs.each_with_index do |song, index|
    song_number = index + 1
    if user_response == song
      puts "Playing #{song}"
    elsif user_response == "#{index + 1}"
      puts "Playing #{songs[index]}"
    else 
      puts "Invalid input, please try again"
    end 
  end
end 

def exit_jukebox 
  puts "Goodbye"
end 

###########################################################

def run(songs)
  help 
  puts "Please enter a command:"
  user_says = gets.strip 
    if user_says == "help"
      help
    elsif user_says == "list"
      list(songs)
    elsif user_says == "play"
      play(songs)
    elsif user_says == "exit"
    end
  exit_jukebox
end




